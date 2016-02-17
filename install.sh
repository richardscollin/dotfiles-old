#!/bin/bash
CONFIG=$HOME/config

mkdir -p $HOME/bin $HOME/.config/awesome $HOME/.vim/bundle

function install_update_repo {
# will install or update the git repo to the given directory
# install_update_repo url directory
if [ -d "$2" ];then
    pushd "$2" >/dev/null
    echo $1
    git pull
    popd >/dev/null
else
    git clone "$1" "$2"
fi
}

install_update_repo https://github.com/gmarik/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
install_update_repo https://github.com/chriskempson/base16-shell "$HOME/.config/base16-shell"
install_update_repo https://github.com/robbyrussell/oh-my-zsh "$HOME/.oh-my-zsh"
install_update_repo https://github.com/powerline/fonts "$HOME/fonts"
"$HOME/fonts/install.sh"

#install patched fonts

function mksymlink {
# will make the symlink onlt if the file doesn't exist
# mkksymlink target linkname
if [ ! -e "$2" ];then
    ln -s "$1" "$2"
fi
}

mksymlink $CONFIG/Xresources $HOME/.Xresources
mksymlink $CONFIG/aliases $HOME/.aliases
mksymlink $CONFIG/asoundrc $HOME/.asoundrc
mksymlink $CONFIG/clang-format $HOME/.clang-format
mksymlink $CONFIG/gitconfig $HOME/.gitconfig
mksymlink $CONFIG/powerline $HOME/.config/powerline
mksymlink $CONFIG/tmux.conf $HOME/.tmux.conf
mksymlink $CONFIG/variables $HOME/.variables
mksymlink $CONFIG/vimrc $HOME/.vimrc
mksymlink $CONFIG/xinitrc $HOME/.xinitrc
mksymlink $CONFIG/xbindkeysrc $HOME/.xbindkeysrc
mksymlink $CONFIG/zshrc $HOME/.zshrc

. $CONFIG/aliases

