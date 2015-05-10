#!/bin/bash
CONFIG=$HOME/config


mkdir -p $HOME/bin $HOME/.config/awesome $HOME/.vim/bundle

#install Vundle for vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install base16 shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

#install patched fonts
#git clone https://github.com/powerline/fonts

ln -s $CONFIG/vimrc $HOME/.vimrc
ln -s $CONFIG/rc.lua $HOME/.config/awesome/rc.lua
ln -s $CONFIG/gitconfig $HOME/.gitconfig

ln -s $CONFIG/zshrc $HOME/.zshrc
ln -s $CONFIG/aliases $HOME/.aliases
ln -s $CONFIG/variables $HOME/.variables
ln -s $CONFIG/Xresources $HOME/.Xresources

