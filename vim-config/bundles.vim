if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

"<---------------------Bundles--------------------->
"shougo's plugins
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/unite-outline"
NeoBundle 'Shougo/vimproc'
NeoBundleFetch 'Shougo/neobundle.vim'              "Let NeoBundle manage NeoBundle

"tpope's plugins
NeoBundle 'tpope/vim-fugitive'                     "git inside vim
NeoBundle 'tpope/vim-repeat'                       "Helps to repeat previous command with . key
NeoBundle 'tpope/vim-endwise.git'                  "To enable automatic end in loops
NeoBundle 'tpope/vim-surround.git'                 "autocomplete all brakets and quotes
NeoBundle 'tpope/vim-rake.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-markdown.git'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-vinegar'

" All scrooloose plugins  
NeoBundle "scrooloose/syntastic"                   "to highlight syntax
NeoBundle 'scrooloose/nerdcommenter'               "to autocommenting based on file type
NeoBundle "scrooloose/nerdtree"                    "classic file explorer

"NeoBundle 'gmarik/vundle'                         "replaced it with neobundle
NeoBundle 'Lokaltog/vim-easymotion'                "make moving inside file real easy
NeoBundle 'justinmk/vim-sneak'
"NeoBundle "terryma/vim-multiple-cursors"           " Multiple cursor like sublime
NeoBundle 'kris89/vim-multiple-cursors'
NeoBundle "jistr/vim-nerdtree-tabs"                "must have plugin for nerdtree
NeoBundle 'Raimondi/delimitMate'                   "Quotes autocomplete
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'junegunn/goyo.vim'                      "edit in without any distraction

"NeoBundle "spolu/dwm.vim"                         "Window Tile manager
NeoBundle "mbbill/undotree"                        "Undo tree that help while undoing things
NeoBundle "mhinz/vim-startify"                     "keeps histroy of previously opened files
NeoBundle 'christoomey/vim-tmux-navigator'         "to navigate between tmux windows
"NeoBundle 'Valloric/YouCompleteMe'                "replaced with neocomplete
NeoBundle 'chriskempson/base16-vim'                "Colors to vim
NeoBundle 'matze/vim-move'                         "<A-k>   Move current line/selection up,  <A-j>   Move current line/selection down

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Keithbsmiley/rspec.vim'

"Markdown
NeoBundle 'nelstrom/vim-markdown-folding.git'

NeoBundle 'Rip-Rip/clang_complete'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"

"Helps in aligning text
NeoBundle 'godlygeek/tabular'
NeoBundle 'Yggdroot/indentLine'

"For html css javascript and coffeescript
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'ap/vim-css-color'
NeoBundle 'othree/html5.vim'
NeoBundle 'honza/vim-snippets'                      "Snippets
NeoBundle 'pangloss/vim-javascript'
NeoBundle "garbas/vim-snipmate"

"colors to vim
NeoBundle 'Rykka/colorv.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'dhruvasagar/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized.git'
"NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'bling/vim-airline'
NeoBundle 'Zuckonit/vim-airline-tomato'
NeoBundle 'edkolev/tmuxline.vim'
"NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'gabrielelana/pomicons'
NeoBundle 'FredKSchott/CoVim'
NeoBundle 'itchyny/calendar.vim'
"NeoBundle 'itchyny/lightline.vim'

NeoBundle 'itchyny/dictionary.vim'
NeoBundle 'koron/nyancat-vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
"NeoBundle 'majutsushi/tagbar'

"new plugins have to explore
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'dhruvasagar/vim-table-mode'
"NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'gregsexton/gitv'
NeoBundle 'tsukkee/unite-tag'

NeoBundleCheck                                     "Installation check.
