source ~/dotfiles/zsh-config/ssh.zsh

# reboot, hibernate and shutdown
alias brb='cowsay "i will be waiting buddy" && sudo pm-hibernate'
alias bye='cowsay "Bye bye buddy" && sudo poweroff'
alias re='cowsay "we will meet soon" && sudo reboot'

# system commands
alias v="vim"
alias x='exit'
alias m='cmatrix -s'
#alias tmux="TERM=screen-256color-bce tmux -u"

# show progress bar while cp mv
alias cp='cp -gR'
alias mv='mv -g'
alias rm='rm -R'

# debian commands
alias ag='apt-get'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias search='sudo apt-cache search'
alias update='sudo apt-get update'
alias autoremove='sudo apt-get autoremove'
alias purge='sudo apt-get purge'

# open config files
alias zrc='~/dotfiles/ && vim zsh-config/zshrc'
alias vrc='~/dotfiles/ && vim vim-config/vimrc'
alias tc='~/dotfiles/ && vim tmux/tmux.conf'
alias ohmy='cd ~/dotfiles/oh-my-zsh && vim'
alias dot='cd ~/dotfiles/ && vim'

alias sd='cap staging deploy'
alias pd='cap production deploy'

alias gaa='git add -A'
alias gset='git remote set-url origin'
# rails projects
alias ud='cd ~/udproducts/'
alias udn='cd ~/udproducts/nthat/'
alias vn='cd ~/udproducts/nthat/ && vim'

alias udm='cd ~/udproducts/IAABA/'

alias udc='cd ~/udproducts/gw-c4u/'
alias vc='cd ~/udproducts/gw-c4u/ && vim'

alias udt='cd ~/udproducts/solid_cube/'
alias vt='cd ~/udproducts/solid_cube/ && vim'

alias udno='cd ~/udproducts/notice/'
alias vno='cd ~/udproducts/notice/ && vim'

alias udi='cd ~/udproducts/insure/'
alias vin='cd ~/udproducts/insure/ && vim'
alias udm='cd ~/udproducts/bi-meteor/ && vim'

# kill all tmux session
alias alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
