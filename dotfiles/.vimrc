set nocompatible              " required
filetype off                  " required
filetype plugin indent on    " required

syntax on

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

if has("autocmd")
  autocmd FileType make   set noexpandtab
endif

set backspace=indent,eol,start

set encoding=utf-8
set hlsearch        " highlight matches
set nu rnu          " display line numbers
set ruler
set showmatch       " highlight matching [{()}]

set foldmethod=indent
set foldlevel=99

let vimwiki_md = {}
let vimwiki_md.auto_diary_index = 1
let vimwiki_md.auto_tags = 1
let vimwiki_md.ext = '.md'
let vimwiki_md.path = '~/vimwiki/mdwiki'
let vimwiki_md.syntax = 'markdown'

let g:vimwiki_list = [vimwiki_md]
