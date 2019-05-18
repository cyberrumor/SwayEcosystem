echo 'Updating user directories so the copy goes smooth.'
xdg-user-dirs-update
echo 'Copying user configuration files to your user folder.'
cp -r home/cyberrumor/* ~/
echo 'Setting permissions so swaybar launches.'
chmod +x ~/.config/swaybar/swaybar.sh
echo 'Setting wallpaper with wal'
wal -i ~/Pictures/LesSquares.png
echo 'To change your wallpaper, and theme your system dynamically, run
	$ wal -i /path/to/image.jpg'
