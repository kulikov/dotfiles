syntax on
colorscheme desert
set guifont=Courier:h12
set noanti
set incsearch
set ignorecase

set tabstop=4 shiftwidth=4 expandtab

set nocompatible
set shiftwidth=4
behave mswin
set cindent
set number
set nowrap
set complete=.,b,k
set matchpairs+=<:>
filetype on
set encoding=utf8
set paste

if has("autocmd")
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event
    " handler (happens when dropping a file on gvim).
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif
