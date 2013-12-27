ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'
ZSH_THEME="gnzh"

# my custom settings
#alias tmux="TERM=screen-256color-bce tmux"
#alias tmux="tmux -u"
alias brb='sudo pm-hibernate'
alias v="vim"
alias bye='sudo poweroff'
alias re='sudo reboot'
alias x='exit'
alias ag='apt-get'
alias install='sudo apt-get install'
alias search='sudo apt-cache search'
alias remove='sudo apt-get remove'
alias autoremove='sudo apt-get autoremove'
alias purge='sudo apt-get purge'
alias vrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'
alias ohmy='cd /home/raj/.oh-my-zsh && vim'
alias sd='cap staging deploy'
alias pd='cap production deploy'

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
plugins=(debian history tmux tmuxinator git git-flow github github-flow bundler gem ruby rails3 rails4 rvm heroku terminator )

source $ZSH/oh-my-zsh.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM 
source ~/.zsh/zshrc.sh

export PATH=$PATH:/usr/local/rvm/gems/ruby-2.0.0-p247/bin:/usr/local/rvm/gems/ruby-2.0.0-p247@global/bin:/usr/local/rvm/rubies/ruby-2.0.0-p247/bin:/usr/local/rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/rvm/gems/ruby-2.0.0-p247/bin:/usr/local/rvm/gems/ruby-2.0.0-p247@global/bin:/usr/local/rvm/rubies/ruby-2.0.0-p247/bin:/usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/rvm/gems/ruby-2.0.0-p247/bin:/usr/local/rvm/gems/ruby-2.0.0-p247@global/bin:/usr/local/rvm/rubies/ruby-2.0.0-p247/bin:/usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
