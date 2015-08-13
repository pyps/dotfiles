# Add directories to $PATH if they're not there already

_addpath() {
    case :$PATH: in
        *:$1:*)
            # already have it on the path
            ;;
        *)
            PATH=$1:$PATH
            ;;
    esac
}
_addpath_if_exists() {
    test -d $1 && _addpath $1
}

# Last function call will be added first in $PATH (# ~/bin)
_addpath /sbin
_addpath /usr/bin
_addpath /usr/sbin
_addpath /usr/local/bin
_addpath /usr/local/sbin
#_addpath /usr/games
_addpath_if_exists $HOME/android/tools
_addpath_if_exists $HOME/android/platform-tools
_addpath_if_exists $HOME/bin

export PATH

