vim.wo.wrap = false

local set = vim.opt

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.smartindent = true

set.relativenumber = true
set.nu = true

set.scrolloff = 8
set.signcolumn = 'yes'
set.colorcolumn = "100"

set.hidden = true

set.cursorline = true

set.termguicolors = true

set.splitbelow = true
set.splitright = true

set.hlsearch = false
set.ignorecase = true
set.smartcase = true

-- updatetime also effects highlighting (see docs for local-highlight)
set.updatetime = 500

set.exrc = true
