#!/bin/bash

mv ~/.vimrc ~/.vim/vimrc.bak

touch ~/.vimrc
mkdir -p ~/.vim

echo "source ${PWD}/init.vim" > ~/.vimrc
echo "source ${PWD}/init/basic.vim
source ${PWD}/init/config.vim
source ${PWD}/init/keymaps.vim
source ${PWD}/init/plugins.vim
source ${PWD}/init/style.vim
source ${PWD}/init/tabsize.vim" > ${PWD}/init.vim

curl -fLo ${PWD}/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c "PlugInstall" -c "q" -c "q"

echo 'Just enjoy it!'
