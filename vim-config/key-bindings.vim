let mapleader=" "
"key mappings to normal vim actions
nnoremap / /\v
vnoremap / /\v
nnoremap ; :
au FocusLost * :wa
nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :q<CR>
nnoremap Q :q!<CR>                             "avoid entering ex mode 
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>ev :tabe ~/dotfiles/vim-config/vimrc<CR>
nnoremap <leader>ez :tabe ~/dotfiles/zsh-config/zshrc<CR>
nnoremap <leader>so :so %<CR>
nnoremap <leader>p :set paste! <CR>
nnoremap <leader>s :%s/
nnoremap <C-s> :w<CR>
nnoremap <Leader>g gg=G<bar>gi<Esc>
inoremap jk <Esc>
vnoremap jk <Esc>
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
nnoremap > :tabnext<CR>
nnoremap < :tabprevious<CR>
nnoremap <Leader>te :tabe 
nnoremap F :bnext<CR>
nnoremap B :bprevious<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Copy to 'clipboard registry'
vmap <C-c> "+y
nmap <C-a> ggVG
vmap <C-x> dd

nnoremap <Leader>ut :UndotreeToggle<cr>
nnoremap <Leader>tb :TagbarToggle<cr>

"map arrowkey to change viewports size
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Up> :resize -5<CR>
nnoremap <Down> :resize +5<CR>

"nnoremap <leader>bi :VimShellPop<CR>bundle install<CR>exit<CR>
"nnoremap <leader>bi :!bundle install<CR>
"nnoremap <Leader>bi :Vim
"nnoremap <leader>bi :call feedkeys("bundle install\<lt>CR>exit\<lt>CR>", "t")<Bar>VimShellPop<CR>
"nnoremap <leader>bi :call feedkeys("bundle install\<lt>CR>", "t")<Bar>VimShellPop<CR>
"nnoremap <leader>bi :new<Bar>0r!bundle install<CR>

"key mappings for plugins
nnoremap <leader>ntt :NERDTreeTabsOpen<CR>
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>nbi :NeoBundleInstall<CR>
nnoremap <leader>np :Nyancat<CR>
nnoremap <leader>fc :VimFilerCurrentDir<CR>
nnoremap <leader>fb :VimFilerBufferDir<CR>
nnoremap <leader>fi :VimFilerExplorer<CR>
nnoremap <leader>vs :VimShellPop<CR>
nnoremap <leader>vt :VimShellTab<CR>

"Rails vim key-mappings
nnoremap <leader>rm :Rmodel<space>
nnoremap <leader>rv :Rview<space>
nnoremap <leader>rc :Rcontroller<space>
nnoremap <leader>rx :Rextract<space>
nnoremap <leader>rs :Rstylesheet<space>
nnoremap <leader>rj :Rjavascript<space>

nnoremap <leader>ge :e Gemfile<CR>
nnoremap <leader>rr :e config/routes.rb<CR>

nnoremap <leader>rk :Rake<space>
nnoremap <leader>rdm :Rake db:migrate<CR>
nnoremap <leader>rdr :Rake db:rollback<CR>
nnoremap <leader>rdd :Rake db:drop<CR>

nnoremap <leader>rg :Rgenerate<space>
nnoremap <leader>rgc :Rgenerate controller<space>
nnoremap <leader>rgm :Rgenerate model<space>
nnoremap <leader>rgd :Rgenerate migration<space>
nnoremap <leader>rgs :Rgenerate scaffold<space>
nnoremap <leader>rgt :Rgenerate task<space>
nnoremap <leader>rgr :Rgenerate resource<space>

nnoremap <leader>rdc :Rdestroy controller<space>
nnoremap <leader>rdmo :Rdestroy model<space>
nnoremap <leader>rdd :Rdestroy migration<space>
nnoremap <leader>rds :Rdestroy scaffold<space>
nnoremap <leader>rdro :Rdestroy resource<space>
nnoremap <leader>rdt :Rdestroy task<space>

" Unite
nmap , [unite]
nnoremap [unite] <nop>
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')

let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

let g:unite_source_rec_async_command = 'ack -f --nofilter'
nnoremap <silent> [unite]t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:! file_mru<cr>
nnoremap <silent> [unite]tt :Unite -start-insert -no-split tag <cr>
nnoremap <silent> [unite]tf :Unite -start-insert -no-split tag/file <cr>
nnoremap <silent> [unite]vv :<C-u>Unite -start-insert -no-split -buffer-name=file_vcs file/vcs<CR>
nnoremap <silent> [unite]f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <silent> [unite]r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <silent> [unite]op :<C-u>Unite -no-split -buffer-name=outline  -auto-preview outline<cr>
nnoremap <silent> [unite]oo :<C-u>Unite -no-split -quick-match -buffer-name=outline  outline<cr>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <silent> [unite]e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]fc :Unite file_rec/async<cr>
nnoremap <silent> [unite]ft :Unite file_rec/async -default-action=tabopen<cr>
nnoremap <silent> [unite]fs :Unite file_rec/async -default-action=split<cr>
nnoremap <silent> [unite]fv :Unite file_rec/async -default-action=vsplit<cr>
nnoremap <silent> [unite]fp :Unite -no-split -buffer-name=files -default-action=preview file<cr>
nnoremap <silent> [unite]fa :Unite -no-split -start-insert -auto-preview file_rec/async <cr>
let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            ⌘ [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['▷ tig                                                        ⌘ ,gt',
        \'normal ,gt'],
    \['▷ git status       (Fugitive)                                ⌘ ,gs',
        \'Gstatus'],
    \['▷ git diff         (Fugitive)                                ⌘ ,gd',
        \'Gdiff'],
    \['▷ git commit       (Fugitive)                                ⌘ ,gc',
        \'Gcommit'],
    \['▷ git log          (Gitv)                                    ⌘ ,gl',
        \'Gitv'],
    \['▷ git history      (Gitv)                                    ⌘ ,gh',
        \'Gitv!'],
    \['▷ git blame        (Fugitive)                                ⌘ ,gb',
        \'Gblame'],
    \['▷ git stage        (Fugitive)                                ⌘ ,gw',
        \'Gwrite'],
    \['▷ git checkout     (Fugitive)                                ⌘ ,go',
        \'Gread'],
    \['▷ git rm           (Fugitive)                                ⌘ ,gr',
        \'Gremove'],
    \['▷ git mv           (Fugitive)                                ⌘ ,gm',
        \'exe "Git mv " input("destino: ")'],
    \['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
        \'Git! push'],
    \['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
        \'Git! pull'],
    \['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
        \'exe "Git! " input("comando git: ")'],
    \['▷ git cd           (Fugitive)',
        \'Gcd'],
    \]
nnoremap <silent>[unite]g :Unite -silent -start-insert menu:git<CR>

"Fugitive 
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>ga :Git add -A<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gl :Git pull<CR>
nnoremap <silent> <leader>gr :Gremove<CR>
nnoremap <silent> <leader>gb :Gbrowse<CR>
vnoremap <silent> <leader>gb :Gbrowse<CR>

"Dispatch
autocmd FileType ruby let b:dispatch = 'ruby %'
autocmd FileType python let b:dispatch = 'python %'
autocmd FileType javascript let b:dispatch = 'node %'
nnoremap <leader>d :Dispatch<CR>
nnoremap <leader>dr :Dispatch bundle exec rspec %<CR>
nnoremap <leader>bc :Dispatch bundle check <CR>
nnoremap <leader>bi :Dispatch bundle install<CR>

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

