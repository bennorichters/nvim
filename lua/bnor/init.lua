local curl = require("plenary.curl")
local Popup = require("nui.popup")

local request_body_recognize_language = require("bnor.requests.recognize_language")
local request_body_grammar = require("bnor.requests.grammar")
local request_body_minutes = require("bnor.requests.minutes")

local function split_lines(text)
  text = text .. "\n"
  local lines = {}
  for str in string.gmatch(text, "(.-)\n") do
    table.insert(lines, str)
  end

  return lines
end

local function open_popup(content)
  local popup = Popup({
    enter = true,
    focusable = false,
    border = {
      style = "rounded",
      text = {
        top = "Suggestion",
        top_align = "center",
        bottom = " q - cancel | r - replace | i - insert ",
        bottom_align = "left",
      }
    },
    position = "50%",
    size = {
      width = "80%",
      height = "60%",
    },
    buf_options = {
      readonly = true,
      modifiable = false,
    },
  })

  local lines = split_lines(content)
  vim.api.nvim_buf_set_lines(popup.bufnr, 0, 1, false, lines)

  popup:map("n", "q", function()
    popup:unmount()
  end, {})

  popup:map("n", "r", function()
    popup:unmount()
    local line_number = vim.fn.line('.')
    vim.api.nvim_buf_set_lines(0, line_number, line_number, false, lines)
    vim.cmd 'normal dd'
  end, {})

  popup:map("n", "i", function()
    popup:unmount()
    local line_number = vim.fn.line('.')
    vim.api.nvim_buf_set_lines(0, line_number, line_number, false, lines)
  end, {})

  popup:mount()
end

local function current_line()
  local line_number = vim.fn.line('.')
  return vim.api.nvim_buf_get_lines(0, line_number - 1, line_number, false)[1]
end

local function visual_selection()
  local s_start = vim.fn.getpos("'<")
  local s_end = vim.fn.getpos("'>")
  local n_lines = math.abs(s_end[2] - s_start[2]) + 1
  local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false)
  lines[1] = string.sub(lines[1], s_start[3], -1)
  if n_lines == 1 then
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1)
  else
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3])
  end
  return table.concat(lines, '\n')
end

local function send_text(text, request_body)
  local key = os.getenv("OPENAI_API_KEY")

  local encoded_text = vim.fn.json_encode(text)
  encoded_text = string.sub(encoded_text, 2, string.len(encoded_text) - 1)
  local body_content = string.format(vim.fn.json_encode(request_body), encoded_text)


  local response = curl.post(
    "https://td-openai-dev.openai.azure.com/" ..
    "openai/deployments/td-openai-dev-gtp4-32k/chat/completions?" ..
    "api-version=2023-05-15",
    {
      body = body_content,
      headers = {
        content_type = "application/json",
        api_key = key,
      },
    })

  if (response.status == 200) then
    local response_body = vim.fn.json_decode(response.body)
    local content = response_body.choices[1].message.content
    return content
  else
    print(vim.inspect(response))
  end
end

local M = {}

M.ai_improve_grammar = function()
  local content = send_text(current_line(), request_body_grammar)
  if (content) then
    open_popup(content)
  end
end

M.ai_set_spelllang = function()
  local content = send_text(current_line(), request_body_recognize_language)
  if (content) then
    vim.cmd("set spelllang=" .. content)
  end
end

M.ai_write_minutes = function()
  local content = send_text(visual_selection(), request_body_minutes)
  if (content) then
    open_popup(content)
  end
end

return M
