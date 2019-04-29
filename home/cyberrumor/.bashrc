#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import pywal colors
(cat ~/.cache/wal/sequences &)

# Set ls colors
alias ls='ls --color=auto'

# Set the prompt
PS1='[\u@\h \W]\$ '

# run neofetch if using termite
if [[ $TERM == xterm-termite ]]; then
	clear && neofetch --gtk2 off --gtk3 off
fi
