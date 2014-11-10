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

Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'

"-------- YCM -----------------"
Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"-------- YCM -----------------"
Bundle 'octol/vim-cpp-enhanced-highlight'
call vundle#end()




set nocompatible   " Disable vi-compatibility
set number
set visualbell

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
