
execute pathogen#infect()
syntax enable
filetype plugin indent on

"Show hidden files in NerdTree
"let NERDTreeShowHidden=1
"
"autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree

let loaded_netrwPlugin = 1


"let g:NERDTreeWinSize = 21
"let g:NERDTreeWinPos = "right"

"mapping autocomplete to Ctrl space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
			\ "\<lt>C-n>" :
			\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
			\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
			\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

"activate neocomplete
"
"Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
 let g:neocomplete#enable_at_startup = 1
 " Use smartcase.
 let g:neocomplete#enable_smart_case = 1
 " Set minimum syntax keyword length.
 let g:neocomplete#sources#syntax#min_keyword_length = 3
 let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

 " Define dictionary.
 let g:neocomplete#sources#dictionary#dictionaries = {
     \ 'default' : '',
         \ 'vimshell' : $HOME.'/.vimshell_hist',
             \ 'scheme' : $HOME.'/.gosh_completions'
                     \ }

runtime bundle/vim-pathogen/autoload/pathogen.vim

set ruler 
set wildmenu            " Popup a window showing all matching command above command line when autocomplete.

set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

color molokai
"color solarized
"color railscasts
"color zenburn
"color candystripe
"color blackboard
"color codeschool
set guifont=Monaco:h13
set mouse=a "sometimes doesnt work so use alt+click
set nu


""" General
" Sets how many lines of history VIM has to remeber.
set history=100
 
" backspace key behavior
set backspace=eol,start,indent
set wrap
 
" Set to auto read when a file is changed from the outside.
set autoread
 
" Jump to the last position when reopening a file
if has("autocmd")
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") 
endif

" search
set incsearch           " incremental search mode
set hlsearch            " highlight search things
set ignorecase          " ignore case when searching
set smartcase           " only works when ignorecase on
 
" encoding
set encoding=utf-8
set fileencodings=utf-8,latin-1,chinese
 
""" Coding
syntax on
set number      " show line number
set showmatch       " show matching brackets.
set matchtime=2         " the length of time to show matching paren.
 
set iskeyword+=_,$,@,%,#,-  " don't linebreak when encounter these characters.
 
set tabstop=2       " The number of spaces count for a TAB.
set softtabstop=4   " The number of spaces inserted when typing TAB. If not expandtab, type TAB twice, will get one TAB.
set shiftwidth=2    " The number of spaces when auto-indent.
set expandtab       " Use the spaces only.
set smarttab            " Insert appropriate spaces in front of line according to shiftwidth, tabstop, softtabstop.
set autoindent
set smartindent
"set cindent            " cindent will disable smartindent, but only for C-like programming.
 
set autowrite       " Automatically save before commands like :next and :make
 
" Loading the plugin and indentation rules according to the dectected filetype.
if has("autocmd")
    filetype plugin indent on
endif
 
" setup new filetype: jsfl

" navigate between panes using  and backspace
nmap <bs> <C-w>w

" disable F1 help
nmap <F1> <Nop>
nmap <Esc> <Nop>

" goto normal mode from insert
inoremap jk <Esc>
inoremap kj <Esc>



