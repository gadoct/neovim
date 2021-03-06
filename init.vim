if &compatible
    set nocompatible
endif
set runtimepath+=~/.dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.dein')
    call dein#begin('~/.dein')
    call dein#add('~/.dein')
    call dein#add('fatih/vim-go')
    call dein#add('Shougo/denite.nvim') "TODO
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('scrooloose/nerdtree')
    call dein#add('ekalinin/Dockerfile.vim')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('bronson/vim-trailing-whitespace')
    call dein#add('tomasr/molokai')
    call dein#add('chemzqm/denite-git')
    call dein#add('zchee/deoplete-go')
    call dein#add('sjl/gundo.vim')
    call dein#add('elzr/vim-json')
    call dein#add('Shougo/neco-vim')
    call dein#add('Shougo/neco-syntax')
    call dein#add('tpope/vim-dadbod')
    call dein#add('sebdah/vim-delve')
    call dein#add('Shougo/defx.nvim')
    call dein#add('SirVer/ultisnips')
    call dein#add('honza/vim-snippets')
    call dein#add('chrisbra/csv.vim')
    call dein#add('andrewstuart/vim-kubernetes')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('tweekmonster/braceless.vim')
    call dein#add('majutsushi/tagbar')
    call dein#add('vim-syntastic/syntastic')
    call dein#add('tpope/vim-fireplace')
    call dein#add('tpope/vim-salve')
    call dein#add('uarun/vim-protobuf')
    call dein#add('mdempsky/gocode')
    call dein#add('clojure-vim/async-clj-omni')
    call dein#add('kien/rainbow_parentheses.vim')
    call dein#add('venantius/vim-cljfmt')
    call dein#add('guns/vim-sexp')
    call dein#add('Shougo/deoplete-clangx')
" FIXME
    "call dein#add('jeetsukumaran/vim-buffergator')
    "call dein#add('rust-lang/rust.vim')
    "call dein#add('tpope/vim-surround')
    "call dein#add('easymotion/vim-easymotion')
    "call dein#add('goerz/ipynb_notedown.vim')
    "call dein#add('renyard/vim-git-flow-format')
    "call dein#add('mbbill/undotree')
    "call dein#add('terryma/vim-smooth-scroll')
    "call dein#add('tbastos/vim-lua')
endif

filetype plugin indent on
set relativenumber
colorscheme molokai
set mouse=a
set so=999
set autoindent
set smartindent
set expandtab
set autowrite
set autowriteall
set noswapfile
set smartcase
set ignorecase
set list
set lcs=eol:§,tab:¤›,extends:»,precedes:«,nbsp:‡

set shiftwidth=4
set softtabstop=4
set tabstop=4

imap jk <Esc>

nmap ]q :lnext<cr>
nmap [q :lprevious<cr>

noremap <F5> :source ~/.config/nvim/init.vim<cr>

autocmd FileType go map <leader>r :GoRun<cr>
autocmd FileType rust map <leader>r :RustRun<cr>

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
map <leader>tr :NERDTreeToggle<cr>
map <leader>tb :TagbarToggle<cr>
map <leader>tt :GoTest<cr>

map <leader>f :Denite file/rec<cr>

let mapleader = "\\"
"config undodir
set undodir=~/.nvim/undodir
set undofile
set undolevels=1000
set undoreload=10000
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
let g:deoplete#sources#go#gocode_binary = "/home/sovv/go/bin/gocode"
set completeopt=longest,menuone " auto complete setting
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns['default'] = '\h\w*'
let g:deoplete#omni#input_patterns = {}
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1
let g:rainbow_active = 1
"TODO
let g:UltiSnipsExpandTrigger="<tab>"

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

"rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['darkred',     'DarkOrchid3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesLoadBraces

let g:sexp_enable_insert_mode_mappings = 0
