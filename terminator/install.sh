#!/bin/bash

script="`readlink -f $0`"
scriptpath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"

# symlink the config file
ln -sf $scriptpath"config" ~/.config/terminator/

exit 0
