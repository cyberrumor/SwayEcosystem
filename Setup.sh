#! /bin/bash
echo 'Updating'
pacman -Syu
echo 'Installing prerequisites for build'
pacman -S wpa_supplicant dialog git xdg-user-dirs ufw sway xorg-server-xwayland termite swaylock swayidle python-pywal grim intel-ucode light neofetch fzf pulseaudio imagemagick
echo 'Creating appropriate directories.'
mkdir /etc/pacman.d/hooks
mkdir /boot/loader
mkdir /boot/loader/entries
xdg-user-dirs-update
echo 'Correcting the name of user folder from cyberrumor to $USER.'
mv -r home/cyberrumor home/$USER
echo 'Turning on firewall'
ufw enable
echo 'Installing systemd-boot'
bootctl --path=/boot install
echo 'Moving build to system'
cp -r * /
echo 'Removing the README.md from /README.md.'
rm /README.md
echo 'Setting permissions for the new files.'
chmod -R 644 ~/.config
chmod 644 .bash_profile
chmod 644 .hushlogin
chmod 644 .bashrc
chmod 644 /etc/pacman.d/hooks/100-systemd-boot.hook
chmod 644 20-quiet-printk.conf
chmod 644 /etc/systemd/logind.conf
chmod 644 /etc/systemd/system/systemd-fsck@.service
chmod 644 /etc/systemd/system/systemd-fsck-root.service
chmod 644 /etc/issue
chmod 644 /etc/mkinitcpio.conf
chmod 755 /usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh
chmod 755 ~/.config/swaybar/swaybar.sh
echo 'You need to manually edit these files:
	/boot/loader/entries/arch.conf - instructions inside.'
echo 'After this file has been corrected, you must run:
	# mkinitcpio -p linux'

	
