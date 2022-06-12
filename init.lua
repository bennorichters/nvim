require 'paq' {
  'savq/paq-nvim';

  'sainnhe/gruvbox-material';

  'phaazon/hop.nvim';

  'nvim-lua/popup.nvim';
  'nvim-lua/plenary.nvim';
  'nvim-telescope/telescope.nvim';

  'neovim/nvim-lspconfig';
  'RRethy/vim-illuminate';

  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/nvim-cmp';

  'L3MON4D3/LuaSnip';
  'saadparwaiz1/cmp_luasnip';

  'simrat39/symbols-outline.nvim';

  'jose-elias-alvarez/nvim-lsp-ts-utils';

  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' };
  'nvim-treesitter/playground';

  'tpope/vim-obsession';
  'tpope/vim-commentary';

  'lfv89/vim-interestingwords';

  'kyazdani42/nvim-web-devicons';

  'ruanyl/coverage.vim';

  'davidgranstrom/nvim-markdown-preview';
}

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
