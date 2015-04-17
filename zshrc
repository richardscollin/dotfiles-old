# Path to your oh-my-zsh installation.
export ZSH=/home/collin/.oh-my-zsh

#ZSH_THEME="powerline"
plugins=(git autojump)

export EDITOR='vim'
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
source $ZSH/oh-my-zsh.sh

function chpwd() {
    emulate -L zsh
    ls
}

BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

. /usr/share/zsh/site-contrib/powerline.zsh

if [[ -a "$HOME/.aliases" ]]
then
    source "$HOME/.aliases"
fi

if [[ -a "$HOME/.variables" ]]
then
    source "$HOME/.variables"
fi
space
ls
