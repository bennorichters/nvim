vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "rebelot/kanagawa.nvim",

  "phaazon/hop.nvim",

  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",

  "simrat39/symbols-outline.nvim",

  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end,
  },
  { 'williamboman/mason-lspconfig.nvim' },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x'
  },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
  { 'rafamadriz/friendly-snippets' },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    "tzachar/local-highlight.nvim",
    config = function()
      require("local-highlight").setup({})
    end,
  },

  "tpope/vim-commentary",

  "lfv89/vim-interestingwords",

  "nvim-tree/nvim-web-devicons",

  "davidgranstrom/nvim-markdown-preview",

  {
    'echasnovski/mini.files',
    version = '*',
    config = function()
      require('mini.files').setup()
    end,

  },

  {
    "mickael-menu/zk-nvim",
    config = function()
      require("zk").setup()
    end
  },

  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
  },

  { "MunifTanjim/nui.nvim" },
})
