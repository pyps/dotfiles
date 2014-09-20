#!/bin/bash

echo "[+][+] Adding Kali Repo Key ED444FF07D8D0BF6"

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
sudo apt-get update

exit 0
