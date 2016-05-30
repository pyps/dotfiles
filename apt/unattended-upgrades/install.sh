#!/bin/bash

script="`readlink -f $0`"
scriptpath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"

sudo apt-get -qq -y  install unattended-upgrades apt-listchanges

# symlink tmux config
sudo ln -sf $scriptpath"02periodic" /etc/apt/apt.conf.d/
sudo ln -sf $scriptpath"50unattended-upgrades" /etc/apt/apt.conf.d/

exit 0
