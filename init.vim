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

lua require('plugins.gruvbox')
lua require('plugins.hop')
exec 'source ' . pluginssub . 'keys.vim'
lua require('plugins.lsp')
exec 'source ' . pluginssub . 'movelines.vim'
exec 'source ' . pluginssub . 'netrw.vim'
exec 'source ' . pluginssub . 'outline.vim'
exec 'source ' . pluginssub . 'statusline.vim'
exec 'source ' . pluginssub . 'telescope.vim'
exec 'source ' . pluginssub . 'treesitter.vim'
exec 'source ' . pluginssub . 'sets.vim'
exec 'source ' . pluginssub . 'split.vim'

