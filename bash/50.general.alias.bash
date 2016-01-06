alias bashrc='vim ~/.bashrc'

alias cd..='cd ..'
alias cd...='cd ../../'

alias ls='ls -h --color'
alias l='ll'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -lAstr'

alias df='df -h'
alias cl='clear'
alias rb='echo "[*] Reload bash config"; source ~/.bashrc'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias soon='sleep 2 &&'
#alias adbinput='_(){msg="$@" && adb shell input text ${msg// /%s}};_'
#alias re='sudo $(fc -ln -1)'
alias watch='watch -d -c'
#alias j='jobs'
#alias todo='vim ~/.todo'
alias ducks='du -cks -h * | sort -rh | head'
alias testsh='r=$RANDOM;echo "#!/bin/bash\n" > script_$r.sh && chmod +x script_$r.sh && vim script_$r.sh'

## grep/ag
alias grep='grep --color'
alias grepc='grep -n -C 2'
#alias agc='ag -C 2'
alias lookfor="grep -i -R -n --color"
