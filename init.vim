call plug#begin(stdpath('data') . '/plugged')
Plug 'gruvbox-community/gruvbox'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-lua/completion-nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
call plug#end()

let mapleader=" "

let pluginssub = stdpath('config') . '/plugins/'

exec 'source ' . pluginssub . 'codefmt.vim'
exec 'source ' . pluginssub . 'completion.vim'
exec 'source ' . pluginssub . 'gruvbox.vim'
exec 'source ' . pluginssub . 'keys.vim'
exec 'source ' . pluginssub . 'movelines.vim'
exec 'source ' . pluginssub . 'netrw.vim'
exec 'source ' . pluginssub . 'telescope.vim'
exec 'source ' . pluginssub . 'treesitter.vim'
exec 'source ' . pluginssub . 'tsserver.vim'
exec 'source ' . pluginssub . 'sets.vim'
exec 'source ' . pluginssub . 'split.vim'

