set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'tpope/vim-fugitive'
Plugin 'scooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tomasr/molokai'
Plugin 'chemzqm/denite-git'
Plugin 'zchee/deoplete-go'
Plugin 'sjl/gundo.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'elzr/vim-json'
Plugin 'Shougo/neco-vim'
Plugin 'Shougo/neco-syntax'
Plugin 'tpope/vim-dadbod'
Plugin 'sebdah/vim-delve'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'Shougo/defx.nvim'
"Plugin 'tweekmonster/braceless.vim'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-surround'
" FIXME
"Plugin 'vim-syntastic/syntastic'
"Plugin 'OmniSharp/omnisharp-vim'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'goerz/ipynb_notedown.vim'
"Plugin 'renyard/vim-git-flow-format'
"Plugin 'mbbill/undotree'
"Plugin 'terryma/vim-smooth-scroll'
"Plugin 'tbastos/vim-lua'
call vundle#end()

filetype plugin indent on
set number
colorscheme molokai
set mouse=a
set so=999
set autoindent
set smartindent
set expandtab
set autowrite
set autowriteall
set noswapfile
set ignorecase

imap jk <Esc>

noremap <F5> :source ~/.config/nvim/init.vim<cr>

autocmd FileType go map <leader>r :GoRun<cr>
autocmd FileType go map :err :GoErrCheck

call denite#custom#map(
              \ 'insert',
              \ 'jk',
              \ '<denite:quit>',
              \ 'noremap'
              \)

call denite#custom#map(
      \ 'normal',
      \ 'a',
      \ '<denite:do_action:add>',
      \ 'noremap'
      \)

call denite#custom#map(
      \ 'normal',
      \ 'd',
      \ '<denite:do_action:delete>',
      \ 'noremap'
      \)

call denite#custom#map(
      \ 'normal',
      \ 'r',
      \ '<denite:do_action:reset>',
      \ 'noremap'
      \)

map <leader>d :NERDTreeToggle<cr>

map <leader>f :Denite file/rec<cr>

let mapleader = "\\"

"config undodir
set undodir=~/.nvim/undodir
set undofile
set undolevels=1000
set undoreload=10000
au FileType go set expandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
au FileType go set updatetime=1000
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'
let g:go_highlight_build_constraints = 1
let g:go_def_mode = 'guru'
let g:go_auto_type_info = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_gocode_unimported_packages = 1
let g:go_fmt_command = "goimports"
let g:deoplete#sources#go#gocode_binary = "/home/kirill/go/bin/gocode"
set completeopt=longest,menuone " auto complete setting
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns['default'] = '\h\w*'
let g:deoplete#omni#input_patterns = {}
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
