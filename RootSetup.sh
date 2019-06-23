echo 'Updating.'
pacman -Syu
echo 'Installing necessary packages.'
pacman -S xdg-user-dirs ufw sway swaybg xorg-server-xwayland termite swaylock swayidle python-pywal grim intel-ucode light neofetch fzf pulseaudio pulseaudio-alsa imagemagick mako bemenu waybar ttf-ubuntu-font-family bluez bluez-utils archlinux-wallpaper linux-lts
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
echo 'Configuring bluetooth to allow Xbox One X and Xbox One S controllers to connect wirelessly.'
bash -c "echo 1 > /sys/module/bluetooth/parameters/disable_ertm"
echo 'Enabling bluetooth.service.'
systemctl enable bluetooth.service
echo 'Setting bluetooth to power on automatically at boot.'
echo "AutoEnable=true" >> /etc/bluetooth/main.conf
echo 'Enabling ufw.service.'
ufw enable
echo 'You need to manually edit /boot/loader/entries/arch.conf'
echo 'and'
echo '/boot/loader/entries/arch-lts.conf'
echo 'When finished, run 
	# mkinitcpio -p linux'
