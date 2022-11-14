require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'sainnhe/gruvbox-material'

  use 'phaazon/hop.nvim'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use 'neovim/nvim-lspconfig'
  use 'RRethy/vim-illuminate'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'simrat39/symbols-outline.nvim'

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

require('config.gruvbox')
require('config.hop')
require('config.keys')
require('config.lsp')
require('config.movelines')
require('config.netrw')
require('config.outline')
require('config.statusline')
require('config.telescope')
require('config.treesitter')
require('config.sets')

require("symbols-outline").setup()
