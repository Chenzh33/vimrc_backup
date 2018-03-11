if &term == "xterm"
    set term=xtermc
endif
"set ai
set noai        " always set autoindenting on, turned off by Eugene
set background=dark	" enable bold font in vi
set backspace=2
set cindent
set smartindent
set nocompatible
set history=50      " keep 50 lines of command line history
set incsearch
set hlsearch
"set list
set ruler       " show the cursor position all the time
set shiftwidth=2 
set expandtab
set showcmd     " display incomplete commands
set nowrap
set textwidth=0
"set sts=4
"set tabstop=4
set tw=79
set viminfo='20,\"50
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
inoremap jj <ESC>
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {<CR>}<ESC>O
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else  
        return a:char  
    endif  
endfunction 
if &t_Co > 1
    syntax on
endif

highlight Normal guibg=Black guifg=White
"syntax on
"if has("vms")
"  set nobackup      " do not keep a backup file, use versions instead
"else
"  set backup        " keep a backup file
"endif
