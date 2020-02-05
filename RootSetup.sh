echo 'Updating.'
pacman -Syu
echo 'Installing necessary packages.'
pacman -S xdg-user-dirs sway swaybg xorg-server-xwayland termite swaylock swayidle python-pywal grim neofetch pulseaudio pulseaudio-alsa pamixer imagemagick mako libnotify bemenu waybar ttf-ubuntu-font-family archlinux-wallpaper bash-completion pkgfile
echo 'Copying systemwide configurations for quality of life improvements.'
mkdir /etc/pacman.d/hooks
mkdir /etc/systemd/system
cp -r etc /etc
cp usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh /usr/lib/systemd/system-sleep/
chmod +x /usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh
mkdir /usr/local/bin
cp usr/local/bin/* /usr/local/bin/
chmod +x /usr/local/bin/*
echo "if you're in chroot, don't forget to install a bootloader!"
echo "If brightness controls don't work, try adding your user to the video group."
