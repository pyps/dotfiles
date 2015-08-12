#!/bin/bash

script="`readlink -f $0`"
scriptpath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"
#Inspiration: http://blogs.perl.org/users/chisel/2011/08/managing-my-shell-setup.html


#Install dependencies
sudo apt-get -qq install bash-completion
echo "[*] Installed dependencies"

#Create config directory
if [ ! -d ~/.bashrc.d ]; then
    mkdir ~/.bashrc.d
fi

#Symlink
IFS=$'\n'
for configfile in `find $scriptpath -name "*.bash" -type f | sort `; do
    echo $configfile
    ln -sf $configfile ~/.bashrc.d/${configfile##*/}
done
echo "[*] Created symlinks"

## Config load snippet (formated)
#if [ -d $HOME/.bashrc.d ]; then
#    for configfile in $HOME/.bashrc.d/* ; do
#        test -f "$configfile" || continue
#        #test -x "$configfile" || continue
#        #echo "$configfile"
#        source "$configfile"
#    done
#fi

config_load_snippet='if [ -d $HOME/.bashrc.d ]; then for configfile in $HOME/.bashrc.d/*; do test -f "$configfile" || continue;  source "$configfile"; done; fi'

if grep -q -F $config_load_snippet ~/.bashrc; then
    echo "[*] Bash config_load snippet already present in ~/.bashrc"
else
    echo "" >> ~/.bashrc
    echo "#Autoload bash configs from $HOME/.bashrc.d/" >> ~/.bashrc
    echo "#Inserted by $script at `date` <<EOI" >> ~/.bashrc
    echo "$config_load_snippet" >> ~/.bashrc
    echo "#EOI" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "[*] Bash config_load snippet inserted in ~/.bashrc"
fi



exit 0
