#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source Bash functions
. ~/.bash_functions

# use bash-completion if avail, requires bash-completion
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
	. /usr/share/bash-completion/bash_completion

# command not found, requires pkgfile, generate cache with 'sudo pkgfile -u'
[[ $PS1 && -f /usr/share/doc/pkgfile/command-not-found.bash ]] && \
	. /usr/share/doc/pkgfile/command-not-found.bash

# Import pywal colors
(cat ~/.cache/wal/sequences &)

# Set ls colors
alias ls='ls --color=auto'
alias sl='ls --color=auto'

# Set the prompt
PS1='[\u@\h \W]\$ '

# run neofetch if using termite
if [[ $TERM == xterm-256color ]]; then
	clear && neofetch --gtk2 off --gtk3 off
fi
