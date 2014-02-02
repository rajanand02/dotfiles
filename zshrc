ZSH=$HOME/.oh-my-zsh
source ~/.zsh/zsh-vcs-prompt/zshrc.sh
export PATH=~/.meteor/tools/latest/bin:$PATH
ZSH_VCS_PROMPT_ENABLE_CACHING='true'
RPROMPT='$(vcs_super_info)'
export EDITOR='vim'
ZSH_THEME="raj"
fortune | cowsay
#COWDIR=/usr/share/cowsay/cows/; COWNUM=$(($RANDOM%$(ls $COWDIR | wc -l))); COWFILE=$(ls $COWDIR | sed -n ''$COWNUM'p'); fortune | cowsay -f $COWFILE
# my custom settings
alias brb='cowsay "i will be waiting buddy" && sudo pm-hibernate'
alias v="vim"
alias bye='cowsay "Bye bye buddy" && sudo poweroff'
alias re='cowsay "we will meet soon" && sudo reboot'
alias x='exit'
alias ag='apt-get'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias search='sudo apt-cache search'
alias update='sudo apt-get update'
alias autoremove='sudo apt-get autoremove'
alias purge='sudo apt-get purge'
alias vrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'
alias ohmy='cd /home/raj/.oh-my-zsh && vim'
alias sd='cap staging deploy'
alias pd='cap production deploy'
# rails projects
alias ud='cd /home/raj/udproducts/'
alias udn='cd /home/raj/udproducts/nthat/'
alias vn='cd /home/raj/udproducts/nthat/ && vim'


alias udm='cd /home/raj/udproducts/IAABA/'

alias udc='cd /home/raj/udproducts/gw-c4u/'
alias vc='cd /home/raj/udproducts/gw-c4u/ && vim'

alias udt='cd /home/raj/udproducts/solid_cube/'
alias vt='cd /home/raj/udproducts/solid_cube/ && vim'

alias udno='cd /home/raj/udproducts/notice/'
alias vno='cd /home/raj/udproducts/notice/ && vim'

alias udi='cd /home/raj/udproducts/insure/'
alias vin='cd /home/raj/udproducts/insure/ && vim'

alias vrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'
alias ohmy='cd /home/raj/.oh-my-zsh && vim'

alias sshmrt='ssh root@162.243.228.243'
alias sshiaas='ssh ubuntu@192.241.129.33'
alias sshiaap='ssh ubuntu@95.138.163.32'
plugins=(bundler capistrano debian gem git git-flow github git-remote-branch gitignore heroku history rails rake rbenv ruby sudo terminator tmux tmuxinator )

source $ZSH/oh-my-zsh.sh


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

