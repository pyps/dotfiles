#!/bin/bash

echo "[+][+] Adding Nginx Repo Key"

script="`readlink -f $0`"
repopath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D


exit 0
