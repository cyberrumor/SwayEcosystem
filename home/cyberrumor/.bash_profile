#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


export MOZ_DBUS_REMOTE=1

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	clear && XKB_DEFAULT_LAYOUT=us exec sway &> /dev/null
fi
