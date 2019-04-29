#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [[ $TERM == xterm-termite ]]; then
	clear && neofetch --gtk2 off --gtk3 off
fi
