# If not running interactively, do not do anything
[[ $- != *i* ]] && return
if [[ -a "$HOME/.variables" ]];then
    source "$HOME/.variables"
fi
if which tmux >/dev/null 2>&1; then
    [[ "$TERM" != "linux" ]] && [[ -z "$TMUX" ]] && exec tmux
fi
# Path to your oh-my-zsh installation.
export ZSH=/home/collin/.oh-my-zsh
DISABLE_AUTO_UPDATE=true

plugins=(git autojump)

if [ "$TERM" = "rxvt-unicode-256color" ] || [ "$TERM" = "screen-256color" ] ;then
    ZSH_THEME="collin"
fi

source $ZSH/oh-my-zsh.sh

if [[ -a "$HOME/.aliases" ]];then
    source "$HOME/.aliases"
fi

# make tab-completion the same color as ls
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

BASE16_SHELL="$HOME/.config/base16-shell/base16-default.light.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# ls after every cd
function chpwd() {
    emulate -L zsh
    ls
}

ls
