#!/bin/bash
CONFIG=$HOME/config

mkdir -p $HOME/bin $HOME/.config/awesome $HOME/.vim/bundle

#install Vundle for vim
VUNDLE_INSTALL=~/.vim/bundle/Vundle.vim
if [ -d "$VUNDLE_INSTALL" ];then
    pushd "$VUNDLE_INSTALL"
    git pull
    popd
else
    git clone https://github.com/gmarik/Vundle.vim.git "$VUNDLE_INSTALL"
fi

#install base16 shell
BASE16_INSTALL=~/.config/base16-shell
if [ -d "$BASE16_INSTALL" ];then
    pushd "$BASE16_INSTALL"
    git pull
    popd
else
    git clone https://github.com/chriskempson/base16-shell.git "$BASE_16"
fi

#install patched fonts
#git clone https://github.com/powerline/fonts

ln -s $CONFIG/vimrc $HOME/.vimrc
ln -s $CONFIG/rc.lua $HOME/.config/awesome/rc.lua
ln -s $CONFIG/gitconfig $HOME/.gitconfig

ln -s $CONFIG/zshrc $HOME/.zshrc
ln -s $CONFIG/aliases $HOME/.aliases
ln -s $CONFIG/variables $HOME/.variables
ln -s $CONFIG/Xresources $HOME/.Xresources
ln -s $CONFIG/tmux.conf $HOME/.tmux.conf

. $CONFIG/aliases

