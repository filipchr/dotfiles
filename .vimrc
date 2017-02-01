set nocompatible               " be iMproved
filetype off                   " required!
set termguicolors

set nobackup
set noswapfile
set number
set scrolloff=7
set autoread
set incsearch
set runtimepath^=~/.vim/bundle/ctrlp.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'racer-rust/vim-racer'
Plugin 'chaoren/vim-wordmotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'isRuslan/vim-es6'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Valloric/YouCompleteMe'
" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'mxw/vim-jsx'

Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim', {'on_ft': 'javascript'}
Plugin 'othree/jsdoc-syntax.vim', {'on_ft': 'javascript'}

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" set listchars=eol:¬,tab:\|\<Tab>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.git$', '\.DS_Store$' ]
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeMinimalUI = 1
" let NERDTreeMapOpenInTab='<ENTER>'

" NERDTree tab
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup = 2
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_no_startup_for_diff = 1

" Vim jsx
let g:vim_jsx_pretty_colorful_config = 1

" Vim gitgutter
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" toggle NERDTree in every tab
nnoremap <silent><leader>t :NERDTreeTabsToggle<cr>
nnoremap <silent><leader>w :w<cr>
nnoremap <silent><leader>q :q<cr>
nnoremap <silent><leader>Q :qa<cr>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 3

syntax enable
" enable dark mode
" set background=dark
" enable syntax processing
" colorscheme solarized
let base16colorspace=256
" colorscheme base16-default-dark
colorscheme base16-materia

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set showmatch
set foldlevel=99
set nocompatible
set showtabline=2
set autoread
set scrolloff=7
set sidescrolloff=10

" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Set splitting direction
set splitbelow
set splitright
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","

let NERDTreeShowHidden=1

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Add simple highlight removal
nnoremap <leader><space> :nohlsearch<cr>
" yunk from the cursor the end of line with Y
nnoremap Y y$
" move down by row instead of by line
nnoremap j gj
" move by up row instead of by line
nnoremap k gk

" copy to system clipboard with ,y
vnoremap <leader>y "+y

" paste from system clipboard with ,p
nnoremap <leader>p "+p

nnoremap <leader>r :source $MYVIMRC<cr>

" toggle NERDTree in every tab
nnoremap <silent><leader>n :NERDTreeTabsToggle<cr>
nnoremap <silent><leader>w :w<cr>
nnoremap <silent><leader>q :q<cr>
nnoremap <silent><leader>Q :qa<cr>

highlight SignColumn ctermbg=0
highlight LineNr ctermbg=0
highlight Search ctermbg=11 ctermfg=3
highlight IncSearch ctermbg=11 ctermfg=3
highlight GitGutterAdd ctermbg=0
highlight GitGutterChange ctermbg=0
highlight GitGutterDelete ctermbg=0
highlight GitGutterChangeDelete ctermbg=0
highlight jsParensError ctermbg=none

highlight JSParens ctermfg=8
highlight JSBrackets ctermfg=8
highlight JSFuncParens ctermfg=8
highlight JSFuncBraces ctermfg=8
highlight JSModuleBraces ctermfg=8
highlight JSExportBraces ctermfg=8
highlight JSIfElseBraces ctermfg=8
highlight JSClassBraces ctermfg=8
highlight JSSwitchBraces ctermfg=8
highlight JSObjectBraces ctermfg=8
highlight JSDestructuringBraces ctermfg=8
highlight JSObjectSeparator ctermfg=8
highlight JSSpreadOperator ctermfg=8
highlight JSNoise ctermfg=8
highlight jsFlowNoise ctermfg=8
highlight jsBraces ctermfg=8

highlight JSFuncCall ctermfg=4
highlight JSFuncArgs ctermfg=3
highlight JSModuleKeywords ctermfg=5
highlight JSModuleOperators ctermfg=5
highlight JSModuleDefault ctermfg=5
highlight JSStorageClass ctermfg=5
highlight JSVariableDef ctermfg=6
highlight JSModuleGroup ctermfg=6
highlight JSImportContainer ctermfg=6
highlight JSExportBlock ctermfg=6
highlight MatchParen ctermbg=none ctermfg=3
highlight jsTemplateBraces ctermfg=5


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

