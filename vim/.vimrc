execute pathogen#infect()

:set visualbell
:set shiftwidth=4
:set tabstop=4
:set showmatch
:set showcmd
:set ignorecase
:set hidden

"use soft tabs for python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
filetype plugin indent on

" Color
:set t_Co=256
:colorscheme inkpot

" GUI options
:set guifont=Courier\ 10\ Pitch\ 10

" nicer list mode (to find tabs)
:set listchars=tab:>-,trail:#,extends:~,precedes:<
":set list (default turned off for now)

:set mousemodel=popup

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

map <C-H> :bp<cr>
map <C-L> :bn<cr>

"command to close buffer without closing the viewport
nmap ,d :b#<bar>bd#<CR>


"toggles the nerd tree to the currently opened file (or closes it)
function! MyNERDTreeToggle()
    :NERDTreeToggle
endfunction

map <C-E> :call MyNERDTreeToggle()<cr>

"nerd tree arrows don't display correctly in gvim, disable them
let g:NERDTreeDirArrows=0
