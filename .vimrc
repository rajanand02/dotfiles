execute pathogen#infect()
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

"set rtp+=~/.vim/bundle/vundle/
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
autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTreeTabsOpen 
autocmd VimEnter * NERDTreeMirror
autocmd VimEnter * wincmd p
set tabstop=2 shiftwidth=2 softtabstop=2
set background=dark
if has('gui_running')
set background=dark
else
set background=dark
endif
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

"nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>ev :e ~/.vimrc<CR>
nnoremap <leader>sv :so ~/.vimrc<CR>
nnoremap <leader>p :set paste! <CR>
nnoremap <leader>ntt :NERDTreeTabsOpen<CR>
nnoremap <leader>bi :NeoBundleInstall<CR>
nnoremap <leader>ge :e Gemfile<CR>
nnoremap <leader>rr :e config/routes.rb<CR>
nnoremap <leader>rv :Rview<space>
nnoremap <leader>rc :Rcontroller<space>
nnoremap <leader>rg :Rgenerate<space>
nnoremap <leader>rx :Rextract<space>
nnoremap <leader>rm :Rmodel<space>
nnoremap <leader>rs :Rstylesheet<space>
nnoremap <leader>np :Nyancat<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>s :%s/
nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>
" Copy to 'clipboard registry'
vmap <C-c> "+y
nmap <C-a> ggVG

" Unite
nmap <space> [unite]
nnoremap [unite] <nop>
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent> [unite]t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:! file_mru<cr>
nnoremap <silent> [unite]vv :<C-u>Unite -start-insert -no-split -buffer-name=file_vcs file/vcs<CR>
nnoremap <silent> [unite]f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <silent> [unite]r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <silent> [unite]op :<C-u>Unite -no-split -buffer-name=outline  -auto-preview outline<cr>
nnoremap <silent> [unite]oo :<C-u>Unite -no-split -quick-match -buffer-name=outline  outline<cr>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <silent> [unite]e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]ft :Unite file_rec/async -default-action=tabopen<cr>
nnoremap <silent> [unite]fs :Unite file_rec/async -default-action=split<cr>
nnoremap <silent> [unite]fv :Unite file_rec/async -default-action=vsplit<cr>
nnoremap <silent> [unite]fp :Unite -no-split -buffer-name=files -default-action=preview file<cr>
nnoremap <silent> [unite]fa :Unite -no-split -start-insert -auto-preview file_rec/async <cr>
nnoremap <silent> [unite]fc :Unite file_rec/async<cr>
let g:unite_source_rec_async_command = 'ack -f --nofilter'
" Select all text
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

NeoBundle 'gmarik/vundle'

NeoBundle 'tpope/vim-fugitive'

NeoBundle 'Lokaltog/vim-easymotion'

"For brackets auto complete
NeoBundle 'tpope/vim-surround.git'

NeoBundle 'mattn/webapi-vim'

NeoBundle 'scrooloose/nerdcommenter'

NeoBundle "scrooloose/nerdtree" 
NeoBundle "jistr/vim-nerdtree-tabs"
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}

NeoBundle 'L9'

NeoBundle 'FuzzyFinder'

NeoBundle 'dhruvasagar/vim-railscasts-theme'

NeoBundle 'altercation/vim-colors-solarized.git'

" To enable automatic end in loops
NeoBundle 'tpope/vim-endwise.git'

" For rails
NeoBundle 'tpope/vim-rake.git'
NeoBundle 'tpope/vim-rails.git'

"For ruby programming
NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'Keithbsmiley/rspec.vim'

" Markdown
NeoBundle 'tpope/vim-markdown.git'
NeoBundle 'nelstrom/vim-markdown-folding.git'



"Window Tile manager
NeoBundle "spolu/dwm.vim"

" Multiple cursor like sublime
NeoBundle "terryma/vim-multiple-cursors"

"Have to explore its feature
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/unite-outline"

"Undo tree that help while undoing things
NeoBundle "mbbill/undotree"

" keeps histroy of previously opened files
NeoBundle "mhinz/vim-startify"

"To highlight syntax
NeoBundle "scrooloose/syntastic"


NeoBundle 'christoomey/vim-tmux-navigator'

NeoBundle 'othree/html5.vim'

NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
" Snippets
NeoBundle 'honza/vim-snippets'

NeoBundle 'Rip-Rip/clang_complete'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"

" Helps in aligning text
NeoBundle 'godlygeek/tabular'

"Quotes autocomplete
NeoBundle 'Raimondi/delimitMate'

NeoBundle 'kchmck/vim-coffee-script'

NeoBundle 'ap/vim-css-color'

" Colors to vim
NeoBundle 'chriskempson/base16-vim'

NeoBundle 'pangloss/vim-javascript'

NeoBundle 'tpope/vim-repeat'

NeoBundle "garbas/vim-snipmate"
"<A-k>   Move current line/selection up,  <A-j>   Move current line/selection down
NeoBundle 'matze/vim-move'


NeoBundle 'FredKSchott/CoVim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'koron/nyancat-vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Shougo/vimshell.vim'
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
" Installation check.

NeoBundleCheck
