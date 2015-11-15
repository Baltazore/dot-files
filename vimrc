set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'
Plugin 'bling/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/tComment'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rake'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mutewinter/nginx.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'slim-template/vim-slim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'lmeijvogel/vim-yaml-helper'
Plugin 'mattn/emmet-vim'
Plugin 'jgdavey/tslime.vim'
Plugin 'jgdavey/vim-turbux'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'wakatime/vim-wakatime'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-bundler'
Plugin 'dsawardekar/ember.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'editorconfig/editorconfig-vim'
" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Colors
Plugin 'jnurmine/Zenburn'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on     " required

syntax enable
" colorscheme zenburn
colorscheme solarized
" Launch vim with light background during the day and dark at night.
" if strftime("%H") >= 5 && strftime("%H") <= 21
"   set background=dark
" else
  set background=light
" endif

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
set history=500                           " Commands amount kept in the history list
set undodir=~/.vim/undodir
set undofile
set undolevels=500
set undoreload=500

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
" set t_Co=256                              " Set color depth
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
set nojoinspaces                          " Use only 1 space after "." when joining lines instead of 2

" Improve vim's scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw

set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo

"""""""""""""""""""""""""""""""""""""""""""""""""""[CONDITIONAL FLAGS]

if !has('gui_running')
  set mouse=
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""[LET]

let mapleader = " "
let ruby_space_errors = 1
let c_space_errors = 1
let g:vim_tags_auto_generate = 0 " Disable tag generation on file save

"""""""""""""""""""""""""""""""""""""""""""""""""""[AUTO COMMANDS]

function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction


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
nmap <leader>fw :Ag ""  --ignore-dir=log --ignore-dir=coverage --ignore-dir=tmp --ignore-dir=vendor\assets\images --ignore-dir=.git
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
let g:user_emmet_expandabbr_key = '<C-y>'
autocmd FileType html,haml,slim,html.handlebars,.hbs,css EmmetInstall

" Handlebars
let g:mustache_abbreviations = 1

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
  au BufNewFile,BufRead *.coffee    set filetype=coffee
  au BufNewFile,BufRead *.js        set filetype=javascript
  au BufNewFile,BufRead *.rb        set filetype=ruby
  au BufNewFile,BufRead *.jsonify   set filetype=ruby
  au BufNewFile,BufRead *.skim      set filetype=slim
  au BufNewFile,BufRead *.slim      set filetype=slim
  au BufNewFile,BufRead *.ngslim    set filetype=slim
  au BufNewFile,BufRead *.yml       set filetype=yaml
  au BufNewFile,BufRead *.nghaml    set filetype=haml
  au BufNewFile,BufRead *.md        set filetype=markdown
  au BufNewFile,BufRead *.markdown  set filetype=markdown
  au BufNewFile,BufRead *.dryml     set filetype=html
endif

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType css setlocal iskeyword+=-
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
"""""""""""""""""""""""""""""""""""""""""""""""""""[Thyme app]
nmap <leader>z :!thyme -d<cr>
nmap <leader>x :!thyme -b<cr>
nmap <leader>c :e ~/.thyme-todo.md<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""[Configs per project in .vimrc]
set exrc
set secure

"""""""""""""""""""""""""""""""""""""""""""""""""""[Switch vim colors]
" <F3>
" toggle between dark and light backgrounds
nnoremap <silent><F3> :let &background=(&background == "dark"?"light":"dark")<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""[JSON format]
nmap <leader>= :%!python -m json.tool<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""[Tmux configs]
" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
