set nocompatible              " required
filetype off                  " required
filetype plugin indent on    " required

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

set backspace=indent,eol,start

set encoding=utf-8
set hlsearch                " highlight matches
set nu rnu
set ruler
set showmatch               " highlight matching [{()}]

syntax on

set foldmethod=indent
set foldlevel=99

let vimwiki_justin = {}
let vimwiki_justin.path = "~/Documents/workspace/vimwiki-justin-personal"
let vimwiki_justin.syntax = "markdown"
let vimwiki_justin.ext = ".md"
let vimwiki_justin.name = "Justin Personal Wiki"

let vimwiki_extron = {}
let vimwiki_extron.path = "$OD/Documents/vimwiki/md"
let vimwiki_extron.path_html = "$OD/Documents/vimwiki/html"
let vimwiki_extron.syntax = "markdown"
let vimwiki_extron.ext = ".md"
let vimwiki_extron.name = "Extron Wiki"

let g:vimwiki_list = [vimwiki_justin, vimwiki_extron]
