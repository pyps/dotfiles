#!/bin/bash

script="`readlink -f $0`"
repopath="${script%/*}/"
#foo="/folder/something/file.ex" ; echo "${foo##*/}" ; echo "${foo%/*}"


for repo in `find $repopath -maxdepth 1 -mindepth 1 -type f -name '*.list'`
do

    echo "[+] About to add ${repo##*/}"
    
    read -r -p "Are you sure? [y/N] " response
    response=${response,,} #ToLower
    
    if [[ $response =~ ^(yes|y)$ ]]
    then

        # Adding repo via symlink
	echo "[+] Adding ${repo##*/}"
	sudo ln -sf $repo /etc/apt/sources.list.d/${repo##*/}
	
	# Adding repo key
	/bin/bash "${script%/*}/${repo##*/}.key.sh"

    fi
done

exit 0
