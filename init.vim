call plug#begin(stdpath('data') . '/plugged')
Plug 'gruvbox-community/gruvbox'

Plug 'phaazon/hop.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'RRethy/vim-illuminate'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'simrat39/symbols-outline.nvim'

Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'

Plug 'lfv89/vim-interestingwords'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'ruanyl/coverage.vim'

Plug 'davidgranstrom/nvim-markdown-preview'
call plug#end()

let mapleader=" "

let pluginssub = stdpath('config') . '/plugins/'

lua require('config.gruvbox')
lua require('config.hop')
lua require('config.keys')
lua require('config.lsp')
lua require('config.movelines')
lua require('config.netrw')
lua require('config.outline')
lua require('config.statusline')
lua require('config.telescope')
exec 'source ' . pluginssub . 'treesitter.vim'
exec 'source ' . pluginssub . 'sets.vim'
exec 'source ' . pluginssub . 'split.vim'
