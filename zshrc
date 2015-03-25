# Path to your oh-my-zsh installation.
export ZSH=/home/collin/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

export EDITOR='vim'
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
source $ZSH/oh-my-zsh.sh

if [[ -a "$HOME/.aliases" ]]
then
    source "$HOME/.aliases"
fi

if [[ -a "$HOME/.variables" ]]
then
    source "$HOME/.variables"
fi
