#!/bin/sh
# Profile file. Runs on login.

export PATH="$PATH:$(du "$HOME/bin/" | cut -f2 | tr '\n' ':'):~/.gem/ruby/2.6.0/bin"

export EDITOR="emacs"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

alias diff='diff --color=auto'

alias grep='grep --color=auto'

alias dmesg='dmesg --color=always'

alias ls='ls -h --color --group-directories-first'
alias ll='ls -l'
alias l='ll -A'

alias r='ranger'

alias dotfiles='/usr/bin/git --git-dir=/home/gagi/.dotfiles/ --work-tree=/home/gagi'
