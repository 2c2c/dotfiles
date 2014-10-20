
"PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/syntastic'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '  -Wall -Werror -ansi -pedantic -std=c++11'


"Bundle 'Valloric/YouCompleteMe'



call vundle#end()
"END PLUGINS



set nocompatible   " Disable vi-compatibility
set number
set visualbell

set background=dark

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set ts=4 sw=4 et
set tw=0
set smartindent
set nostartofline
set incsearch
set ignorecase
set smartcase
colorscheme elflord
set background=dark
hi Normal ctermfg=grey ctermbg=black

function! ToLab()
    execute "!scp " . bufname("%") . " " . "ccoll010@bell.cs.ucr.edu:"
endfunction


command C11 !g++ -Wall -Werror -ansi -pedantic -std=c++11 %
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

"Makefile no tab -> spaces issue
autocmd FileType make setlocal noexpandtab
