#!/bin/sh
# Profile file. Runs on login.

export PATH="${PATH}:/home/gagi/bin:/home/gagi/.gem/ruby/2.7.0/bin:/usr/lib/jvm/default/bin:/home/gagi/.yarn/bin:/home/gagi/.local/bin"

alias emacs="emacs -mm"

export EDITOR="emacs -nw"
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
alias la=l

alias r='ranger'

alias e='emacs -nw'

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
alias gpp='git pull'
alias gr='git rebase'
alias grc='git rebase --continue'

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

# stupid but required
alias sudo='sudo '

# disable fucking telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export MY_CONFIG_HOME="$HOME/.config"
export MY_CACHE_HOME="$HOME/.cache"
export MY_DATA_HOME="$HOME/.local/share"
export MY_STATE_HOME="$HOME/.local/state"


export NVM_DIR="$MY_DATA_HOME"/nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# dotfiles fixes
export CARGO_HOME="$MY_DATA_HOME"/cargo
export GOPATH="$MY_DATA_HOME"/go
export KDEHOME="$MY_CONFIG_HOME"/kde
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export GDBHISTFILE="$MY_DATA_HOME"/gdb/history
export DOCKER_CONFIG="$MY_CONFIG_HOME"/docker
export ELM_HOME="$MY_CONFIG_HOME"/elm
export FFMPEG_DATADIR="$MY_CONFIG_HOME"/ffmpeg
export GRADLE_USER_HOME="$MY_DATA_HOME"/gradle
export GTK_RC_FILES="$MY_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$MY_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$MY_CONFIG_HOME"/java
export NODE_REPL_HISTORY="$MY_DATA_HOME"/node_repl_history
export PYENV_ROOT="$MY_DATA_HOME"/pyenv
export RUSTUP_HOME="$MY_DATA_HOME"/rustup
export WORKON_HOME="$MY_DATA_HOME"/virtualenvs

