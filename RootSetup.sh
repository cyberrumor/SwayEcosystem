echo 'Updating.'
pacman -Syu
echo 'Installing necessary packages.'
pacman -S xdg-user-dirs sway swaybg xorg-xwayland alacritty swaylock swayidle python-pywal grim neofetch pipewire pipewire-pulse pamixer imagemagick mako libnotify bemenu waybar arc-gtk-theme arc-icon-theme terminus-font archlinux-wallpaper
echo 'Copying systemwide configurations for quality of life improvements.'
mkdir /usr/local/bin
cp usr/local/bin/* /usr/local/bin/
chmod +x /usr/local/bin/*

read -p "Check out /etc/mkinitcpio.conf, replace udev with systemd in HOOKS=(...)"
