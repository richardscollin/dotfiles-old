#!/bin/bash
mkdir -p $HOME/.vim/bundle

function install_or_update_git_repo {
    if [ -d "$2" ];then
        git -C "$2" pull
    else
        git clone "$1" "$2"
    fi
}

install_or_update_git_repo https://github.com/gmarik/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
install_or_update_git_repo https://github.com/robbyrussell/oh-my-zsh "$HOME/.oh-my-zsh"

echo "echo 'source ~/.variables' >> ~/.bashrc"
echo "echo 'source ~/.aliases' >> ~/.bashrc"
