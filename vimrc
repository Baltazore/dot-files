set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'L9'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'bling/vim-airline'
" Bundle 'airblade/vim-gitgutter'
" SnipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

Bundle 'tpope/vim-sensible'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/tComment'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rake'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mutewinter/nginx.vim'
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'slim-template/vim-slim'
Bundle 'yaymukund/vim-rabl'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'lmeijvogel/vim-yaml-helper'
" Bundle 'scrooloose/syntastic'
Bundle 'mattn/emmet-vim'
" Bundle 'tpope/vim-dispatch'
Bundle 'christoomey/vim-tmux-runner'
Bundle 'jgdavey/tslime.vim'
Bundle 'jgdavey/vim-turbux'
Bundle 'jelera/vim-javascript-syntax'

filetype plugin indent on     " required

syntax enable
colorscheme solarized

" Appear all time VIM AirLine
set laststatus=2
" let AirLine use PowerLine fonts
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""[STATIC FLAGS]
" Don't make a backup before overwriting a file
set nobackup
set nowritebackup

" Show cursor osition all the time
set ruler

" Show incomplete commands
set showcmd

" Echo on arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

"" HISTORY
set history=5000                           " Commands amount kept in the history list
set undodir=~/.vim/undodir
set undofile
set undolevels=5000
set undoreload=5000

"" OTHER
set ai                                    " Autoindent new lines
set autoread                              " Automatically read reload file from disk if it was changed from outside the vim and has no unsaved changes
set backspace=indent,eol,start            " Intuitive backspacing
set clipboard=unnamed                     " Default copy goes to system clipboard
set directory=$HOME/.vim/tmp//,.          " Keep swap files in one location
set expandtab                             " User spaces instead of tabs
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866 " Order of file encoding recognition attempts
set ffs=unix,mac,dos                      " Order of line endings recognition attempts
set foldlevel=20
set foldlevelstart=20
set foldmethod=syntax                     " Set block-to-fold determination method set hidden
set hls                                   " Highlight search results
set ignorecase                            " Ignore case when searching
set incsearch                             " Highlight search results while inputting
set laststatus=2                          " Show usefull status information at the bottom of the screen
set list
set listchars=tab:!-,trail:-,extends:>    " Show tab as dots and trailing spaces as -
set mat=5                                 " Match blinking
set matchtime=3
set noswapfile                            " Don't create swap FileWritePre
set number                                " Set line numbers
set scrolloff=5                           " Show 3 lines of context arount the cursor
set shiftwidth=2                          " Global shift width
set showmatch
set showmode                              " Display mode you're in
set smartcase                             " Case sensitive search if any uppercased character presents in the search phrase
set sts=2                                 " Amount of spaces per tab
set t_Co=256                              " Set color depth
set tabstop=2                             " Global tab width
set timeoutlen=500                        " Autoindent new lines
set title                                 " Set the terminal's title
set visualbell                            " No beeping
set wildignore+=*/.git/*,*/tmp/*,*/log/*,*/app/assets/images/*,*/vendor/assets/images/*,*/coverage/*,*/public/* " Files ignored from ctrlp search
set wildmenu                              " Enhanced command line completion
set wildmode=list:longest                 " Complete files like a shell
set wrap                                  " Turn on line wrapping
set cursorline cursorcolumn               " Highlight cursor line and column
set colorcolumn=81                        " Highlight 81 column

"""""""""""""""""""""""""""""""""""""""""""""""""""[CONDITIONAL FLAGS]

if !has('gui_running')
  set mouse=
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""[LET]

let mapleader = " "

"""""""""""""""""""""""""""""""""""""""""""""""""""[AUTO COMMANDS]

function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()

"""""""""""""""""""""""""""""""""""""""""""""""""""[MAPPINGS]

inoremap kj <Esc>l

" Fast saving, reload, quit
nmap <leader>w :w!<cr>
nmap <leader>e :e!<cr>
nmap <leader>q :q!<cr>

" smart way to move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac. j is <A-j>.
" Some troubles with terminal.
nnoremap j ddp
nnoremap k ddkP
vmap j <Esc>`>jdd`<Pgv
vmap k <Esc>`<kdd`>pgv

" Convert all ruby hashes from 1.8 to 1.9 syntax
nnoremap cah :%s/:\([^ ]*\)\(\s*\)=>/\1:/g

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Smart movement
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""""""""""""""""""""""""""""[PLUGINS]
" NERDTree
map <C-N> :NERDTreeFind<CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 40
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_autoclose = 1
map <Leader>n :NERDTreeTabsToggle<CR>

"CtrlP
map <Leader>p :CtrlPMRUFiles<CR>
map <Leader>r :CtrlPClearCache<CR>
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = '\.git$'

" Ag
" Find (define word)
nmap <leader>fw :Ag ""  --ignore-dir=log --ignore-dir=public --ignore-dir=coverage --ignore-dir=tmp --ignore-dir=vendor\assets\images --ignore-dir=.git
" Find (define directory)
nmap <leader>fd :Ag ""  --ignore-dir=log --ignore-dir=public --ignore-dir=coverage --ignore-dir=tmp --ignore-dir=vendor\assets\images --ignore-dir=.git
" Instant find with word and directory predefined
nmap <leader>ff :Ag "" --ignore-dir=log --ignore-dir=public --ignore-dir=coverage --ignore-dir=tmp --ignore-dir=vendor\assets\images --ignore-dir=.git <CR>

" Ruby Refactoring
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>

" SplitJoin
nmap sjj :SplitjoinJoin<CR>
nmap sjs :SplitjoinSplit<CR>

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,haml,slim,css EmmetInstall

" Ctags
nnoremap <leader>. :CtrlPTag<cr>

" Tabular
nmap <Leader>t{char} :Tabularize /{char}<CR>
vmap <Leader>t{char} :Tabularize /{char}<CR>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Turbux
let g:no_turbux_mappings = 1
map <leader>S <Plug>SendTestToTmux
map <leader>s <Plug>SendFocusedTestToTmux
let g:turbux_command_rspec = 'spring rspec '

"""""""""""""""""""""""""""""""""""""""""""""""""""[FyleType]
if has("syntax")
  au BufNewFile,BufRead *.coffee  set filetype=coffee
  au BufNewFile,BufRead *.js      set filetype=javascript
  au BufNewFile,BufRead *.rb      set filetype=ruby
  au BufNewFile,BufRead *.jsonify set filetype=ruby
  au BufNewFile,BufRead *.skim    set filetype=slim
  au BufNewFile,BufRead *.slim    set filetype=slim
  au BufNewFile,BufRead *.ngslim  set filetype=slim
  au BufNewFile,BufRead *.yml     set filetype=yaml
  au BufNewFile,BufRead *.nghaml  set filetype=haml
endif

autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype coffeescript setlocal ts=4 sts=4 sw=4
"""""""""""""""""""""""""""""""""""""""""""""""""""[Thyme app]
nmap <leader>z :!thyme -d<cr>
nmap <leader>x :!thyme -b<cr>
nmap <leader>c :e ~/.thyme-todo.md<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""[Configs per project in .vimrc]
set exrc
set secure
"""""""""""""""""""""""""""""""""""""""""""""""""""[JavaScript Code Folfing]
au FileType javascript call JavaScriptFold()

"""""""""""""""""""""""""""""""""""""""""""""""""""[Switch vim colors]
" <F3>
" toggle between dark and light backgrounds
nnoremap <silent><F3> :let &background=(&background == "dark"?"light":"dark")<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""[JSON format]
nmap <leader>= :%!python -m json.tool<cr>
