call plug#begin(stdpath('data') . '/plugged')
Plug 'gruvbox-community/gruvbox'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils' 

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'sbdchd/neoformat'

Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'

Plug 'lfv89/vim-interestingwords'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'ruanyl/coverage.vim'
call plug#end()

let mapleader=" "

let pluginssub = stdpath('config') . '/plugins/'

exec 'source ' . pluginssub . 'dart.vim'
exec 'source ' . pluginssub . 'gruvbox.vim'
exec 'source ' . pluginssub . 'keys.vim'
exec 'source ' . pluginssub . 'lsp.vim'
exec 'source ' . pluginssub . 'movelines.vim'
exec 'source ' . pluginssub . 'neoformat.vim'
exec 'source ' . pluginssub . 'netrw.vim'
exec 'source ' . pluginssub . 'telescope.vim'
exec 'source ' . pluginssub . 'treesitter.vim'
" exec 'source ' . pluginssub . 'typescript.vim'
exec 'source ' . pluginssub . 'sets.vim'
exec 'source ' . pluginssub . 'split.vim'
