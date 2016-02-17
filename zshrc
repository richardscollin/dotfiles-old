# If not running interactively, do not do anything
[[ $- != *i* ]] && return
#[[ "$TERM" != "linux" ]] && [[ -z "$TMUX" ]] && exec tmux
# Path to your oh-my-zsh installation.
export ZSH=/home/collin/.oh-my-zsh
DISABLE_AUTO_UPDATE=true

if [[ -a "$HOME/.variables" ]];then
    source "$HOME/.variables"
fi

if [[ -a "$HOME/.aliases" ]];then
    source "$HOME/.aliases"
fi

plugins=(git autojump)

if [ "$TERM" = "rxvt-unicode-256color" ] || [ "$TERM" = "screen-256color" ] ;then
    ZSH_THEME="agnoster"
fi

source $ZSH/oh-my-zsh.sh

# make tab-completion the same color as ls
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

#BASE16_SHELL="$HOME/.config/base16-shell/base16-3024.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# ls after every cd
function chpwd() {
    emulate -L zsh
    ls
}

ls
