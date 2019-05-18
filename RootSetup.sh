echo 'Copying bootloader configuration for silent boot.'
cp -r boot/loader/* /boot/loader/
echo 'Copying systemwide configurations for quality of life improvements.'
mkdir /etc/pacman.d/hooks
mkdir /etc/systemd/system
cp -r etc /etc
cp usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh /usr/lib/systemd/system-sleep/
chmod +x /usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh
echo 'You need to manually edit /boot/loader/entries/arch.conf'
echo 'When finished, run 
	# mkinitcpio -p linux'
