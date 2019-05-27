echo 'Updating.'
pacman -Syu
echo 'Installing necessary packages.'
pacman -S xdg-user-dirs ufw sway xorg-server-xwayland termite swaylock swayidle python-pywal grim intel-ucode light neofetch fzf pulseaudio imagemagick mako bemenu waybar noto-fonts linux-lts
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
echo 'You need to manually edit /boot/loader/entries/arch.conf'
echo 'and'
echo '/boot/loader/entries/arch-lts.conf'
echo 'When finished, run 
	# mkinitcpio -p linux'
