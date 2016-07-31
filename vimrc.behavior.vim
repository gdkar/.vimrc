set isk=a-z,A-Z,48-57,_
set history=256
"set ttyfast
set hidden
"if has('cryptv')
"    set cryptmethod="blowfish"
"endif

execute pathogen#infect()
syntax on
filetype plugin on

set wildmode=longest,list
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

"set modeline
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nohlsearch
set incsearch
set noswapfile

set autoindent
"set smartindent
set backspace=indent,eol,start

"set ignorecase
"set smartcase

"set grepprg=ack


"if has('cscope')
"    "set cscopetag cscopeverbose
"
"    if has('quickfix')
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"    endif
"
"    command! -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"endif


let g:ag_highlight= 1

let g:sneak#s_next = 0
let g:sneak#use_ic_scs = 1
let g:sneak#textobject_z = 0


" vim: fdm=marker
