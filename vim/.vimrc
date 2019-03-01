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
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2
filetype plugin indent on

" Color
:set t_Co=256
:colorscheme inkpot

" GUI options
:set guifont=Courier\ 10\ Pitch\ 12

" guifont size + 1
function! ZoomIn()
  let l:fsize = substitute(&guifont, '.*Pitch ', '\1', '')
  let l:fsize += 1
  let &guifont = "Courier\ 10\ Pitch\ " . l:fsize
endfunction

" guifont size - 1
function! ZoomOut()
  let l:fsize = substitute(&guifont, '.*Pitch ', '\1', '')
  let l:fsize -= 1
  let &guifont = "Courier\ 10\ Pitch\ " . l:fsize
endfunction

map <C-PAGEUP> :call ZoomIn()<cr>
map <C-PAGEDOWN> :call ZoomOut()<cr>

" nicer list mode (to find tabs)
:set listchars=tab:>-,trail:#,extends:~,precedes:<
:set list

:set mousemodel=popup

map <F12> :syntax sync fromstart<CR>

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

map <C-H> :MBEbp<cr>
map <C-L> :MBEbn<cr>

"command to close buffer without closing the viewport
nmap ,d :b#<bar>bd#<CR>


"toggles the nerd tree to the currently opened file (or closes it)
function! MyNERDTreeToggle()
    if !g:NERDTree.IsOpen()
        :NERDTreeFind
    else
        :NERDTreeClose
    endif
endfunction

map <C-E> :call MyNERDTreeToggle()<cr>
map <C-T> :TagbarToggle<cr>

"nerd tree arrows don't display correctly in gvim, disable them
let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['\.pyc$', '\.o']

let g:go_fmt_command = "gofmt"

command! GitHubLink call GitHubLink()

function! GitHubLink()
    execute "!" . "githublink" . " " . bufname("%") . " " . ( line(".") ) ." &"
endfunction
