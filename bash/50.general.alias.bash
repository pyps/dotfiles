
alias bashrc='vim ~/.bashrc'
alias ls='ls -h --color'
alias df='df -h'
alias ll='ls -lh --color'
alias l='ll'
alias cd..='cd ..'
alias cd...='cd ../../'
#alias rz='source ~/.bashrc'
alias upgrade='sudo apt update && apt list --upgradable && sudo apt upgrade'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias mkcd='_(){mkdir $1 && cd $1};_'
#alias trash='_(){mv $@ ~/tmp/trash/};_'
alias soon='sleep 2 &&'
#alias adbinput='_(){msg="$@" && adb shell input text ${msg// /%s}};_'
#alias re='sudo $(fc -ln -1)'
alias watch='watch -d -c'
#alias j='jobs'
#alias todo='vim ~/.todo'
alias ducks='du -cks -h * | sort -rh | head'
alias testscript='r=$RANDOM;echo "#!/bin/bash\n" > script_$r.sh && chmod +x script_$r.sh && vim script_$r.sh'

## grep/ag
alias grep='grep --color'
alias grepc='grep -n -C 2'
#alias agc='ag -C 2'
alias lookfor="grep -i -R -n --color"
