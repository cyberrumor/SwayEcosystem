echo 'Updating.'
pacman -Syu
echo 'Installing necessary packages.'
pacman -S xdg-user-dirs ufw sway swaybg xorg-server-xwayland termite swaylock swayidle python-pywal grim intel-ucode neofetch fzf pulseaudio pulseaudio-alsa pamixer imagemagick mako libnotify openssh bemenu waybar ttf-ubuntu-font-family archlinux-wallpaper linux-lts
echo 'Installing systemd-boot'
bootctl --path=/boot install
echo 'Copying bootloader configuration for silent boot.'
cp -r boot/loader/* /boot/loader/
echo 'Copying systemwide configurations for quality of life improvements.'
mkdir /etc/pacman.d/hooks
mkdir /etc/systemd/system
cp -r etc /etc
cp usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh /usr/lib/systemd/system-sleep/
chmod +x /usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh
mkdir /usr/local/bin
cp usr/local/bin/* /usr/local/bin/
chmod +x /usr/local/bin/*
echo 'Configuring firewall to allow limited tcp traffic over port 22 (useful for ssh).'
ufw default deny
ufw limit 22/tcp
echo 'Enabling ufw.service.'
ufw enable
echo 'You need to manually edit /boot/loader/entries/arch.conf'
echo 'and'
echo '/boot/loader/entries/arch-lts.conf'
echo 'When finished, run 
	# mkinitcpio -p linux'
echo 'If brightness controls don't work, try adding your user to the video group.'
