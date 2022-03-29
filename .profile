#!/bin/sh
# Profile file. Runs on login.

export PATH="${PATH}:/home/gagi/bin:/home/gagi/.gem/ruby/2.7.0/bin:/usr/lib/jvm/default/bin:/home/gagi/.yarn/bin"

export EDITOR="emacs"
export TERMINAL="konsole"
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

alias c='clear'
alias g='git'
alias gs='git status'
alias ga='git add'
alias gaa='git add *'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpo='git push origin'
alias sc='systemctl'
alias scs='systemctl start'
alias scr='systemctl restart'
alias sce='systemctl stop'
alias jc='journalctl'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias ports='netstat -tulanp'


# disable fucking telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
