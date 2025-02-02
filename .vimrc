#!/bin/bash

set tabstop=2
set shiftwidth=2

highlight StatusLine ctermfg=DarkCyan

call plug#begin()
	Plug 'sheerun/vim-polyglot'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

highlight VertSplit ctermfg=23 cterm=bold
highlight HorizSplit ctermfg=23 cterm=bold

nnoremap <Backspace> i
