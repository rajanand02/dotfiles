execute pathogen#infect()
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"setting goes here
set nocompatible
let mapleader=","
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
set clipboard=unnamed
set backspace=indent,eol,start " Make backspace behave normally.
set wildmode=list:longest,full
set wildmenu
let g:startify_custom_header= [
      \ ' _      _   _                 _ _   ',
      \ '| |    | | ( )               | | | ',
      \ '| | ___| |_|/ ___   _ __ ___ | | | ',
      \ '| |/ _ \ __| / __| |  __/ _ \| | |  ',
      \ '| |  __/ |_  \__ \ | | | (_) | | | ',
      \ '|_|\___|\__| |___/ |_|  \___/|_|_| ', 
      \ '',
      \ '',
      \ ]
let g:EasyMotion_leader_key = '<Leader><Leader>'
"autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTreeTabsOpen 
autocmd VimEnter * NERDTreeMirror
autocmd VimEnter * wincmd p
set tabstop=2 shiftwidth=2 softtabstop=2
"set background=dark
"if has('gui_running')
  "set background=dark
"else
  "set background=dark
"endif
"let g:solarized_termtrans=1
"let g:solarized_termcolors=16
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
set background=dark
if !has("gui_running")
    colorscheme solarized
else
    colorscheme solarized
endif
let g:cssColorVimDoNotMessMyUpdatetime = 1
set t_Co=256
let g:vimfiler_as_default_explorer = 1
"autocmd VimEnter * VimFilerExplorer
"autocmd VimEnter * wincmd p
set tabstop=2 shiftwidth=2 softtabstop=2
colorscheme solarized
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>cp :"+y<CR>
nnoremap <leader>ev :e ~/.vimrc<CR>
nnoremap <leader>sv :so ~/.vimrc<CR>
nnoremap <leader>p :set paste! <CR>
nnoremap <leader>bi :BundleInstall<CR>
nnoremap <C-s> :w<CR>
:map <F7> :w !xclip<CR><CR>
:vmap <leader>yc "+y
:map <S-F7> :r!xclip -o<CR>
nnoremap <leader>s :%s/
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
runtime! macros/matchit.vim
au BufNewFile,BufRead *.erb set filetype=eruby.html

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"
" Make arrowkey do something usefull, resize the viewports accordingly
nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neocomplete#force_overwrite_completefunc = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/bootstrap-snippets/snippets'
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
"Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

let g:move_key_modifier = 'C'
let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'component': {
            \   'readonly': '%{&readonly?"x":""}',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '|', 'right': '|' }
            \ }
"Syntastic customization
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'
"mult cursor  plugin
let g:multi_cursor_next_key='<C-m>'

"Rails vim
"Create command abbreviations that auto corrects ;)
nnoremap <leader>rf :e Gemfile<CR>
nnoremap <leader>rr :e config/routes.rb<CR>
nnoremap <leader>rv :Rview<space>
nnoremap <leader>rc :Rcontroller<space>
nnoremap <leader>rg :Rgenerate<space>
nnoremap <leader>rm :Rmodel<space>
nnoremap <leader>rs :Rstylesheet<space>
nnoremap <leader>np :Nyancat<CR>

"emmet zencoding
let g:user_emmet_settings = {
            \  'php' : {
            \    'extends' : 'html',
            \    'filters' : 'c',
            \  },
            \  'xml' : {
            \    'extends' : 'html',
            \  },
            \  'haml' : {
            \    'extends' : 'html',
            \  },
            \  'eruby' : {
            \    'extends' : 'html',
            \  },
            \}
"Matchitv
runtime! macros/matchit.vim
au Filetype css,javascript
            \ let b:match_words = &matchpairs

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
Bundle 'tpope/vim-rake.git'
Bundle 'tpope/vim-rails.git'

"For ruby programming
Bundle 'vim-ruby/vim-ruby'
"Bundle 'Keithbsmiley/rspec.vim'

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

Bundle "garbas/vim-snipmate"
"<A-k>   Move current line/selection up,  <A-j>   Move current line/selection down
Bundle 'matze/vim-move'


Bundle 'FredKSchott/CoVim'
Bundle 'Shougo/vimfiler.vim'
Bundle 'itchyny/lightline.vim'
Bundle 'koron/nyancat-vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'mattn/emmet-vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'tpope/vim-ragtab'
