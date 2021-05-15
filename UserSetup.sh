echo 'Updating user directories so the copy goes smooth.'
xdg-user-dirs-update
echo 'Copying user configuration files to your user folder.'
cp -rT home/cyberrumor ~/
echo 'Cleaning up unused files'
rm ~/blurshot.png
chmod +x ~/.config/mako/launch.sh
echo 'Setting wallpaper with wal'
wal -i /usr/share/backgrounds/archlinux/archlinux-burn.jpg
ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
echo 'Installing autotiling for bspwm behavior'
mkdir ~/Builds
cd ~/Builds
git clone https://aur.archlinux.org/autotiling.git
cd autotiling
makepkg -si

echo 'To change your wallpaper (which will theme your system to match), run
	$ wal -i /path/to/image.jpg'
