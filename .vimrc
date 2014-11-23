set nocompatible              " be iMproved, required

"leader key!
let mapleader = "\<Space>"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'

Bundle 'scrooloose/syntastic'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '  -Wall -Werror -ansi -pedantic -std=c++11'

Bundle 'bling/vim-bufferline'
let g:bufferline_echo = 0
Bundle 'bling/vim-airline'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#bufferline#enabled = 1

" fancy symbols
let g:airline_powerline_fonts=0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶ '
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'

"-------- YCM -----------------"
Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='~/dotfiles/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"-------- YCM -----------------"
Bundle 'octol/vim-cpp-enhanced-highlight'
call vundle#end()




set nocompatible   " Disable vi-compatibility
set number
set visualbell
set cursorline

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set ts=2 sw=2 et
set tw=0
set smartindent
set nostartofline
set incsearch
set ignorecase
set smartcase
set t_Co=256
let g:zenburn_old_Visual=1
colorscheme zenburn

command C11 !g++ -Wall -Werror -ansi -pedantic -std=c++11 -g %

"Makefile no tab -> spaces issue
autocmd FileType make setlocal noexpandtab

map <C-I> :pyf ~/dotfiles/clang-format.py<CR>
imap <C-I> <ESC>:pyf ~/dotfiles/clang-format.py<CR>i

let hlstate=0
nnoremap <Leader>h :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <silent> <Leader>j :bp!<CR>
nnoremap <silent> <Leader>k :bn!<CR>
nnoremap <silent> <Leader>d :bd<CR>
nnoremap <silent> <Leader><Space> :b#!<CR>
nnoremap <silent> <Leader>1 :1b!<CR>
nnoremap <silent> <Leader>2 :2b!<CR>
nnoremap <silent> <Leader>3 :3b!<CR>
nnoremap <silent> <Leader>4 :4b!<CR>
nnoremap <silent> <Leader>5 :5b!<CR>
nnoremap <silent> <Leader>6 :6b!<CR>
nnoremap <silent> <Leader>7 :7b!<CR>
nnoremap <silent> <Leader>8 :8b!<CR>
nnoremap <silent> <Leader>9 :9b!<CR>
nnoremap <silent> <Leader>0 :10b!<CR>
