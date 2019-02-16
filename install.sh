#!/bin/bash

mv ~/.vimrc ~/.vimrc.bak

touch ~/.vimrc

echo "source ~/.vim/init.vim" > ~/.vimrc

ln -s ${PWD}/init.vim ~/.vim/init.vim
ln -s ${PWD}/autoload ~/.vim/autoload
ln -s ${PWD}/colors ~/.vim/colors
ln -s ${PWD}/init ~/.vim/init
ln -s ${PWD}/plugin ~/.vim/plugin
ln -s ${PWD}/syntax ~/.vim/syntax
ln -s ${PWD}/tools ~/.vim/tools

curl -fLo ${PWD}/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c "PlugInstall" -c "q" -c "q"

echo 'Just enjoy it!'