local curl = require("plenary.curl")
local Popup = require("nui.popup")

local M = {}

local request_body_recognize_language = [[
{
  "messages": [
    {
      "role": "system",
      "content": "]] ..
    "You are a language expert designed to recognize the language of a given text. " ..
    "Your response is the two letter ISO 639-1 code of the language the given text is written in." ..
    [["
    },
    {
      "role": "user",
      "content": "vom wasser haben wir's gelernt"
    },
    {
      "role": "assistant",
      "content": "de"
    },
    {
      "role": "user",
      "content": "Perhaps one did not want to be loved so much as to be understood."
    },
    {
      "role": "assistant",
      "content": "en"
    },
    {
      "role": "user",
      "content": "Als je het lelijke niet kunt verbeteren, vernietigen of ontvluchten, is het maar het beste het te bezingen."
    },
    {
      "role": "assistant",
      "content": "nl"
    },
    {
      "role": "user",
      "content": "Tedd a kezed homlokomra, mintha kezed kezem volna."
    },
    {
      "role": "assistant",
      "content": "hu"
    },
    {
      "role": "user",
      "content": "%s"
    }
  ]
}
]]

local request_body_grammar = [[
{
  "messages": [
    {
      "role": "system",
      "content": "]] ..
    "Assistant is a language expert designed to help users with grammar and spelling. " ..
    "Improve every text the user sends. " ..
    "Respond in the language of the user. " ..
    "Respond with just the improved text, nothing more." ..
    [["
    },
    {
      "role": "user",
      "content": "The moon is more bright then it was yesterdate."
    },
    {
      "role": "assistant",
      "content": "The moon is brighter than it was yeterday."
    },
    {
      "role": "user",
      "content": "Hun moeten onmidellijk doen wat ik zech."
    },
    {
      "role": "assistant",
      "content": "Ze moeten onmiddellijk doen wat ik zeg."
    },
    {
      "role": "user",
      "content": "%s"
    }
  ]
}
]]

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
      body = string.format(request_body, line_content),
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

M.ai_improve_grammar = function()
  local content = send_current_line(request_body_grammar)
  if (content) then
    open_popup(content)
  end
end

M.ai_set_spellang = function()
  local content = send_current_line(request_body_recognize_language)
  if (content) then
    vim.cmd("set spelllang=" .. content)
  end
end

return M
