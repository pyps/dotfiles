#!/bin/bash

script="`readlink -f $0`"
repopath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"

pref=official-debian-all.pref

echo "[+] Adding ${pref##*/}"
sudo ln -sf $repopath$pref /etc/apt/preferences.d/$pref

exit 0
