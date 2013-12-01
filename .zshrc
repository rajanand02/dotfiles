# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tmux="TERM=screen-256color-bce tmux"
alias tmux="tmux -u"
alias v="vim"
# my custom settings
alias brb='sudo pm-hibernate'
alias bye='sudo poweroff'
alias re='sudo reboot'
alias x='exit'
# rails projects
alias raj='cd /home/raj/'
alias ud='cd /home/raj/udproducts/'
alias udn='cd /home/raj/udproducts/nthat/'
alias vn='cd /home/raj/udproducts/nthat/ && vim'

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
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
plugins=(debian history tmux tmuxinator git git-flow github github-flow bundler gem ruby rails3 rails4 rvm heroku terminator )

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM 

export PATH=/home/raj/Komodo-Edit/bin:$PATH
export PATH=$PATH:/usr/local/rvm/gems/ruby-2.0.0-p247/bin:/usr/local/rvm/gems/ruby-2.0.0-p247@global/bin:/usr/local/rvm/rubies/ruby-2.0.0-p247/bin:/usr/local/rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/rvm/gems/ruby-2.0.0-p247/bin:/usr/local/rvm/gems/ruby-2.0.0-p247@global/bin:/usr/local/rvm/rubies/ruby-2.0.0-p247/bin:/usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/rvm/gems/ruby-2.0.0-p247/bin:/usr/local/rvm/gems/ruby-2.0.0-p247@global/bin:/usr/local/rvm/rubies/ruby-2.0.0-p247/bin:/usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
