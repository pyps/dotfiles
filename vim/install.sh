#!/bin/bash

script="`readlink -f $0`"
scriptpath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"

git clone -q https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# symlink vimrc config
ln -sf $scriptpath"vimrc" ~/.vimrc

mkdir -p ~/.vim/undodir

vim +BundleClean +BundleInstall! +qa

exit 0

