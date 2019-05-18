echo 'Copying user configuration files to your user folder.'
cp -r home/cyberrumor/* ~/
echo 'Setting permissions so swaybar launches.'
chmod +x ~/.config/swaybar/swaybar.sh
echo 'You must run
	$ wal -i /path/to/image.jpg'
echo 'to complete installation, without which there will be errors.'
