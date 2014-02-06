"key mappings to normal vim actions
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :q<CR>
nnoremap Q :q!<CR>                             "avoid entering ex mode 
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>ev :e ~/.vimrc<CR>
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

" Copy to 'clipboard registry'
vmap <C-c> "+y
nmap <C-a> ggVG
vmap <C-x> dd

"map arrowkey to change viewports size
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Up> :resize -5<CR>
nnoremap <Down> :resize +5<CR>


