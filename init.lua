require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'savq/melange'

  use 'phaazon/hop.nvim'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use 'simrat39/symbols-outline.nvim'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use 'kdarkhan/rust-tools.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'nvim-treesitter/playground'

  use 'tpope/vim-obsession'
  use 'tpope/vim-commentary'

  use 'lfv89/vim-interestingwords'

  use 'kyazdani42/nvim-web-devicons'

  use 'ruanyl/coverage.vim'

  use 'davidgranstrom/nvim-markdown-preview'

  use 'ThePrimeagen/vim-be-good'
end)

vim.g.mapleader = ' '

require('config.colorscheme')
require('config.hop')
require('config.keys')
require('config.luasnip')
require('config.lsp')
require('config.movelines')
require('config.netrw')
require('config.outline')
require('config.statusline')
require('config.telescope')
require('config.treesitter')
require('config.sets')

require("symbols-outline").setup()
