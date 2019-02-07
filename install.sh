#!/bin/bash

mv ~/.vimrc ~/.vimrc.bak

touch ~/.vimrc

echo "source ${PWD}/init.vim" > ~/.vimrc

curl -fLo ${PWD}/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c "PlugInstall" -c "q" -c "q"

echo 'Just enjoy it!'