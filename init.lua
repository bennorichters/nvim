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
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required

      {
        -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' },      -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  },

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

  "kyazdani42/nvim-web-devicons",

  "davidgranstrom/nvim-markdown-preview",

  {
    "dpayne/CodeGPT.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },

  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  },

  -- "/Users/bennorichters/code/taal.nvim",
})
