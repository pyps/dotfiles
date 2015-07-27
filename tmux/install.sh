#!/bin/bash

script="`readlink -f $0`"
scriptpath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"

sudo apt-get install tmux

# symlink tmux config
ln -sf $scriptpath"tmux.conf" ~/.tmux.conf

exit 0
