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
set number
set laststatus=2
set ruler
set expandtab
set showmode

" Mappings
map <F2> :tabp <CR>
map <F3> :tabn <CR>

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

" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
