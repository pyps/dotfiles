

### Functions
## Extract file, example. "ex package.tar.bz2"
ex() {
    if [[ -f $1 ]]; then
        case $1 in
            *.tar.bz2)   tar xjf $1  ;;
            *.tar.gz)    tar xzf $1  ;;
            *.bz2)       bunzip2 $1  ;;
            *.rar)       rar x $1    ;;
            *.gz)        gunzip $1   ;;
            *.tar)       tar xf $1   ;;
            *.tbz2)      tar xjf $1  ;;
            *.tgz)       tar xzf $1  ;;
            *.zip)       unzip $1    ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1     ;;
            *)           echo $1 cannot be extracted ;;
        esac
    else
        echo $1 is not a valid file
    fi
}

## List installed packages with repository
listir() {
    apt-cache policy $(dpkg -l | awk 'NR >= 6 { print $2 }') |
    awk '/^[^ ]/    { split($1, a, ":"); pkg = a[1] }
    nextline == 1 { nextline = 0; printf("%-40s %-50s %s\n", pkg, $2, $3) }
    /\*\*\*/      { nextline = 1 }'
}

## Create directory and cd into it
mkcd() {
    if [[ ! -d $1 ]]; then
        mkdir -p $1
        cd $1
    fi
}

