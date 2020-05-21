echo 'Updating user directories so the copy goes smooth.'
xdg-user-dirs-update
echo 'Copying user configuration files to your user folder.'
cp -rT home/cyberrumor ~/
echo 'Cleaning up unused files'
rm ~/makodemo.png
rm ~/blurshot.png
rm ~/waldemo.png
chmod +x ~/.config/mako/launch.sh
echo 'Setting wallpaper with wal'
wal -i /usr/share/backgrounds/archlinux/archlinux-burn.jpg
ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
echo 'To change your wallpaper (which will theme your system to match), run
	$ wal -i /path/to/image.jpg'
echo "Installing the required icon pack so waybar functions correctly."
cd ~/Builds
git clone https://aur.archlinux.org/ttf-material-design-icons-git.git
cd ttf-material-design-icons-git
makepkg -si
