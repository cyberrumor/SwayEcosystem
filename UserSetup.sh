echo 'Updating user directories so the copy goes smooth.'
xdg-user-dirs-update
echo 'Copying user configuration files to your user folder.'
cp -r home/cyberrumor/* ~/
cp -r home/cyberrumor/.* ~/
echo 'Cleaning up unused files'
rm ~/screenshot.png
rm ~/blurshot.png
rm ~/issue.png
chmod +x ~/.config/mako/launch.sh
echo 'Setting wallpaper with wal'
wal -i /usr/share/backgrounds/archlinux/archlinux-burn.jpg
ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
echo 'To change your wallpaper, and theme your system dynamically, run
	$ wal -i /path/to/image.jpg'
echo 'For waybar icons to display, you must install
	the git version of material design icons from here:
	https://aur.archlinux.org/ttf-material-design-icons-git/'
