execute pathogen#infect()
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"setting goes here
set nocompatible
filetype on
syntax on
set number
set relativenumber
filetype plugin indent on 
set noswapfile
set incsearch
set ignorecase
set history=1000
set title
set expandtab
set autoindent
set mouse=a
set cursorline
set backspace=indent,eol,start " Make backspace behave normally.
set wildmode=list:longest,full
set wildmenu
autocmd VimEnter * NERDTreeTabsOpen 
autocmd VimEnter * wincmd p

set tabstop=2 shiftwidth=2 softtabstop=2
set background=dark
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_termtrans=1
let g:solarized_termcolors=16
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
set t_Co=16
colorscheme solarized

let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

 "Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


"All bundle files

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'

Bundle 'Lokaltog/vim-easymotion'

"For brackets auto complete
Bundle 'tpope/vim-surround.git'

Bundle 'mattn/webapi-vim'

Bundle 'scrooloose/nerdcommenter'

Bundle "scrooloose/nerdtree" 
Bundle "jistr/vim-nerdtree-tabs"
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

Bundle 'L9'

Bundle 'FuzzyFinder'

Bundle 'altercation/vim-colors-solarized.git'

" To enable automatic end in loops
Bundle 'tpope/vim-endwise.git'

" For rails
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'

"For ruby programming
Bundle 'vim-ruby/vim-ruby'
Bundle 'Keithbsmiley/rspec.vim'

" Markdown
Bundle 'tpope/vim-markdown.git'
Bundle 'nelstrom/vim-markdown-folding.git'



"Window Tile manager
Bundle "spolu/dwm.vim"

" Multiple cursor like sublime
Bundle "terryma/vim-multiple-cursors"

"Have to explore its feature
Bundle "Shougo/unite.vim"

"Undo tree that help while undoing things
Bundle "mbbill/undotree"

" keeps histroy of previously opened files
Bundle "mhinz/vim-startify"

"To highlight syntax
Bundle "scrooloose/syntastic"


Bundle 'christoomey/vim-tmux-navigator'

Bundle 'othree/html5.vim'

Bundle 'Yggdroot/indentLine'
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
" Snippets
Bundle 'honza/vim-snippets'

Bundle 'Rip-Rip/clang_complete'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"

" Helps in aligning text
Bundle 'godlygeek/tabular'

"Quotes autocomplete
Bundle 'Raimondi/delimitMate'

Bundle 'kchmck/vim-coffee-script'

Bundle 'ap/vim-css-color'

" Colors to vim
Bundle 'chriskempson/base16-vim'

Bundle 'pangloss/vim-javascript'

Bundle 'tpope/vim-repeat'

"<A-k>   Move current line/selection up,  <A-j>   Move current line/selection down
Bundle 'matze/vim-move'
