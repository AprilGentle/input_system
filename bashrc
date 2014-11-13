# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

stty -ixon

# User specific aliases and functions
# key bind
if [[ $TERM == xterm* || $TERM == rxvt* || $TERM == screen ]];then
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

        bind -x '"\C-l":clear'
    fi
fi

if [[ $BASH_VERSION == '4.1.2(1)-release' ]]; then
    export SHELL=/usr/local/bin/bash
    bash
elif [[ $BASH_VERSION == '4.3.0(1)-release' ]]; then
    set -o vi
fi
