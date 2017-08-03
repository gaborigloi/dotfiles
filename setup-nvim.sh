#!/bin/sh

set -uex

ln -s $PWD/init.vim ~/.config/nvim/

# install vim-plug
# https://github.com/junegunn/vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# for checking Python files with ALE
sudo apt-get install flake8
