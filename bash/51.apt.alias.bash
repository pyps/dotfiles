## sudo actions
alias update='sudo apt-get update'
alias install='sudo apt-get install'
alias upgrade='sudo apt upgrade'

## non-sudo actions
alias madison='apt-cache madison'
alias policy='apt-cache policy'
alias search='apt-cache search --names-only'
#alias pkg='dpkg --get-selections | grep -v deinstall | grep'
#alias pkg='dpkg -l | tr -s " " | grep'
alias listi='apt list --installed'
alias listu='apt list --upgradable'
alias depends='apt-cache depends'
alias rdepends='apt-cache rdepends --installed'

