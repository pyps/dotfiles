#!/bin/bash

script="`readlink -f $0`"
scriptpath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"
#Inspiration: http://blogs.perl.org/users/chisel/2011/08/managing-my-shell-setup.html


#Install dependencies
sudo apt-get -qq install bash-completion

#Create config directory
if [ ! -d ~/.bashrc.d ]; then
    mkdir ~/.bashrc.d
fi

#Symlink each config file into config directory
for bashconfig in $scriptpath"*.bash"; do
    #echo $bashconfig

    #$ask()
    ln -s $bashconfig ~/.bashrc.d/"$(basename  $bashconfig)"

done


exit 0
