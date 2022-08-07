" General Editor Setup
set background=dark
syntax enable
filetype plugin on
set nocompatible
set autoindent
set ts=4 sw=4 et si
set whichwrap+=<,>,[,]
set backspace=indent,eol,start
set hlsearch
set number relativenumber
set laststatus=2
set ruler
set expandtab
set noshowmode

" Change numbering on entering/leaving insert and command mode
au InsertEnter * set nonumber norelativenumber
au InsertEnter * set number
au InsertLeave * set number relativenumber

" Quickly toggle line numbers for copy/pasting
function ToggleNum()
    if &nu
        :set nonu
    else
        :set nu
    endif
endfunction
map <F5> :call ToggleNum() <CR>

" Quickly toggle line wrapping
function ToggleWrap()
    if &wrap
        :set wrap!
    else
        :set wrap
    endif
endfunction
map <F6> :call ToggleWrap() <CR>

" Spell checking
set complete+=kspell
set spelllang=en_au
hi SpellBad cterm=underline
hi SpellBad gui=undercurl
if has("autocmd")
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=text
    autocmd FileType markdown setlocal spell
    autocmd FileType text setlocal spell
    autocmd FileType gitcommit setlocal spell
endif
