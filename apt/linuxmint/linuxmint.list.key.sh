#!/bin/bash

echo "[+][+] Adding Linuxmint Repo Key 3EE67F3D0FF405B2"

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 3EE67F3D0FF405B2
sudo apt-get update

exit 0
