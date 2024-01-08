local curl = require("plenary.curl")
local Popup = require("nui.popup")

local request_body_recognize_language = require("bnor.requests.recognize_language")
local request_body_grammar = require("bnor.requests.grammar")

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

  vim.api.nvim_buf_set_lines(popup.bufnr, 0, 1, false, { content })

  popup:map("n", "q", function()
    popup:unmount()
  end, {})

  popup:map("n", "r", function()
    popup:unmount()
    vim.api.nvim_set_current_line(content)
  end, {})

  popup:map("n", "i", function()
    popup:unmount()
    vim.cmd 'normal o'
    vim.api.nvim_set_current_line(content)
  end, {})

  popup:mount()
end

local function send_current_line(request_body)
  local current_line = vim.fn.line('.')
  local line_content = vim.api.nvim_buf_get_lines(0, current_line - 1, current_line, false)[1]

  local key = os.getenv("OPENAI_API_KEY")
  local response = curl.post(
    "https://td-openai-dev.openai.azure.com/" ..
    "openai/deployments/td-openai-dev-gpt4/chat/completions?" ..
    "api-version=2023-05-15",
    {
      body = string.format(vim.fn.json_encode(request_body), line_content),
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
  local content = send_current_line(request_body_grammar)
  if (content) then
    open_popup(content)
  end
end

M.ai_set_spelllang = function()
  local content = send_current_line(request_body_recognize_language)
  if (content) then
    vim.cmd("set spelllang=" .. content)
  end
end

return M
