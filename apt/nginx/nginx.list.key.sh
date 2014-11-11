#!/bin/bash

echo "[+][+] Adding Nginx Repo Key"

script="`readlink -f $0`"
repopath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"
sudo apt-key add $repopath"nginx_signing.key"



exit 0
