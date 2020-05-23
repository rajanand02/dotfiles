#source ~/dotfiles/zsh-config/ssh.zsh

# reboot, hibernate and shutdown
alias brb='cowsay "i will be waiting buddy" && sudo pm-hibernate'
alias bye='cowsay "Bye bye buddy" && sudo poweroff'
alias re='cowsay "we will meet soon" && sudo reboot'

# system commands
alias v="vim"
alias vi="vim"
alias vsplit="vim -O"
alias x='exit'
alias m='cmatrix -s'
alias tmux="TERM=screen-256color-bce tmux -u"

# show progress bar while cp mv
#alias cp='cp -gR'
#alias mv='mv -g'
#alias rm='rm -R'

# debian commands
alias ag='apt-get'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias search='sudo apt-cache search'
alias update='sudo apt-get update'
alias autoremove='sudo apt-get autoremove'
alias purge='sudo apt-get purge'

# open config files
alias zrc='~/dotfiles/ && vim zsh-config/zshrc.sh'
alias vrc='~/dotfiles/ && vim vim-config/vimrc'
alias tc='~/dotfiles/ && vim tmux/tmux.conf'
alias ohmy='cd ~/dotfiles/oh-my-zsh && vim'
alias dot='cd ~/dotfiles/ && vim'

alias sd='cap staging deploy'
alias pd='cap production deploy'

#git
alias gaa='git add -A'
alias gset='git remote set-url origin'
# You can use whatever you want as an alias, like for mondays:
# kill all tmux session
alias alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'

# npm
alias ns='npm start'
alias ni='npm install'
alias nid='npm install -D'
alias nu='npm uninstall'
alias nr='npm run'

#network
alias restart-network='sudo /etc/init.d/network-manager restart && sudo /etc/init.d/networking restart'

# https://github.com/tmuxinator/tmuxinator#shorthand
alias mux=tmuxinator

# mac specific aliases
alias binstall='brew install'
