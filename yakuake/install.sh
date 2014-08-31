#!/bin/bash

script="`readlink -f $0`"
scriptpath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"

# symlink the config files
ln -sf $scriptpath"config/konsolerc" ~/.kde/share/config/
ln -sf $scriptpath"config/yakuakerc" ~/.kde/share/config/

# symlink themes
ln -sf $scriptpath"apps/konsole" ~/.kde/share/apps/
ln -sf $scriptpath"apps/yakuake" ~/.kde/share/apps/

exit 0

