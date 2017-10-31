#!/bin/sh

set -uex

ln -s $PWD/init.vim ~/.vimrc

# install vim-plug
# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim