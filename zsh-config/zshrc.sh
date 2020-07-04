ZSH_DISABLE_COMPFIX=true
ZSH=$HOME/.oh-my-zsh
#autoload predict-on
#predict-on
source ~/dotfiles/zsh-config/zsh-vcs-prompt.sh
source ~/dotfiles/zsh-config/aliases.zsh
source ~/dotfiles/zsh-config/private-aliases.zsh
source ~/.tmux/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
ZSH_VCS_PROMPT_ENABLE_CACHING='true'
RPROMPT='$(git_super_status)'
export EDITOR='vim'
ZSH_THEME="raj"
fortune | cowsay
#COWDIR=/usr/share/cowsay/cows/; COWNUM=$(($RANDOM%$(ls $COWDIR | wc -l))); COWFILE=$(ls $COWDIR | sed -n ''$COWNUM'p'); fortune | cowsay -f $COWFILE
# my custom settings
# ubuntu
#plugins=(zsh-autosuggestions debian git git-flow github git-remote-branch gitignore history sudo battery nanoc zsh-syntax-highlighting z ubuntu node npm nvm cp web-search command-not-found common-aliases frontend-search)
# mac
plugins=(zsh-autosuggestions git git-flow github gitignore history sudo zsh-syntax-highlighting z node npm nvm cp command-not-found common-aliases frontend-search)

source $ZSH/oh-my-zsh.sh
# source ~/.nvm/nvm.sh
#fpath=(~/.zsh-completions/src $fpath)

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"
#export PATH="$HOME/.rbenv/bin:$PATH"
# prevents accidental ctrl-s
stty -ixon

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
