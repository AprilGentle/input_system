# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#vi mode
set -o vi

# User specific aliases and functions
# key bind
if [[ $TERM == xterm* || $TERM == rxvt* ]];then
    if [[ $SHELLOPTS == *emacs* ]]; then
        bind '"\eb":vi-bWord'
        bind '"\ef":vi-fWord'
    else
        #vi mode
        bind '"\C-a":beginning-of-line'
        bind '"\C-e":end-of-line'
        
        bind '"\C-f":forward-char'
        bind '"\C-b":backward-char'

        bind '"\C-d":delete-char'
    fi
fi

