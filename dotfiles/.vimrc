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

let vimwiki_default = {}
let vimwiki_default.path = '/Users/jpeterson/OneDrive\ -\ STATS\ LLC/Documents/vimwiki/mdwiki'
let vimwiki_default.path_html = '/Users/jpeterson/OneDrive\ -\ STATS\ LLC/Documents/vimwiki/mdhtml'
let vimwiki_default.syntax = 'markdown'
let vimwiki_default.ext = '.md'
let vimwiki_default.name = 'MarkdownWiki'

let vimwiki_ancient = {}
let vimwiki_ancient.path = '/Users/jpeterson/OneDrive\ -\ STATS\ LLC/Documents/vimwiki/wiki'
let vimwiki_ancient.path_html = '/Users/jpeterson/OneDrive\ -\ STATS\ LLC/Documents/vimwiki/html'
let vimwiki_ancient.syntax = 'default'
let vimwiki_ancient.ext = '.wiki'
let vimwiki_ancient.name = 'AncientWiki'

let g:vimwiki_list =[vimwiki_default, vimwiki_ancient]
