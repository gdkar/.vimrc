let mapleader='\'
let maplocalleader='\\'

" C-{hjkl} resize windows
noremap <silent> <C-h> <C-w><
noremap <silent> <BS>  <C-w><
noremap <silent> <C-j> <C-w>-
noremap <silent> <C-k> <C-w>+
noremap <silent> <C-l> <C-w>>

" C-{n,p} move between buffers
noremap <silent> <C-p> :bp<CR>
noremap <silent> <C-n> :bn<CR>

" ; is C-w, ;, is ,
"noremap <silent> ,  ;
"noremap <silent> ;, ,
cnoremap w!! w !sudo tee > /dev/null %
noremap <silent> ;  <C-w>
noremap <silent> ;] <C-w><C-]>

" alt-{n,p} move between tabs, alt-t creates a new tab, alt-c closes one
noremap <silent> <Esc>n :tabnext<CR>
noremap <silent> <Esc>p :tabprev<CR>
noremap <silent> <Esc>t :tabnew<CR>
noremap <silent> <Esc>c :tabclose<CR>

" tt means :ta
noremap <silent> tt :ta 

" fold manipulation
function! FoldToggle()
    if foldlevel('.') > 0
        if foldclosed('.') == -1
            foldclose!
        else
            foldopen!
        endif
    endif
endfunction

nnoremap <silent> <Enter> :call FoldToggle()<CR>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
"
" tree view
nnoremap <F10> :NERDTreeToggle<CR>
nnoremap ;aF   :NERDTreeFind<CR>

" taglist
nnoremap <silent> <F9> :Tlist<CR>
nnoremap <silent> ;aT  :TlistOpen

" Xorg paste escape codes
map  <ESC>[200~ :set paste<CR>a
map  <ESC>[201~ :set nopaste<CR>
imap <ESC>[200~ <C-o>:set paste<CR>
imap <ESC>[201~ <nop>
set  pastetoggle=<ESC>[201~

" neovim specifics
if has('nvim')
    tnoremap <C-a>      <C-\><C-n>
    tnoremap <C-a><C-a> <C-a>
endif


" vim: fdm=marker
