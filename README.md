SwayEcosystem
--------------------------------------------------
I made this because I want to have a one stop shop
for all the tweaks I typically give a fresh install. 
The fun parts to figure out how to implement were:
- blurry [swaylock](https://github.com/swaywm/swaylock)
- [bemenu](https://github.com/Cloudef/bemenu) is the same size as [waybar](https://github.com/Alexays/Waybar/) so opening it looks clean
- battery level icon seamlessly indicates whether laptop is charging or not
- bemenu, waybar, [termite](https://github.com/thestinger/termite), and [sway](https://github.com/swaywm/sway) are all configured to use [pywal](https://github.com/dylanaraps/pywal)
- simple and [silent boot](https://wiki.archlinux.org/index.php/Silent_boot)
- simple and silent login using tty1 automatically starts sway
- closing laptop lid hibernates instead of suspends, activating swaylock on the way
- waybar shortcuts for: [wifi-menu](https://github.com/joukewitteveen/netctl/blob/master/src/wifi-menu) (more shortcuts coming soon)
- setup scripts so you can get up and running fast (supports fresh install only)

<img src="/home/cyberrumor/screenshot.png">

Pretty lockscreen achieved by combing [grim](https://github.com/emersion/grim) + [imagemagick](https://imagemagick.org/index.php) + swaylock

<img src="/home/cyberrumor/blurshot.png">

Foregoing a display manager cuts down on configuration, keeping it simple. That doesn't mean you can't customize your login screen!

<img src="/home/cyberrumor/issue.png">

This config uses
--------------------------------------------------
- base (I use Arch, btw)
- base-devel (prerequisite for compiling packages)
- wpa_supplicant (get wifi working fast)
- dialog (includes wifi-menu, a basic GUI for connecting to new networks)
- git (needed to clone this repo, and to fulfill this waybar config's icon dependency)
- xdg-user-dirs (populates your home folder with useful folders)
- ufw (uncomplicated firewall, the default firewall solution for Ubuntu)
- sway (lightweight and configurable window manager for a beautiful system, even on old hardware)
- swaybg (perfect wallpaper setting program for any wayland compositor)
- xorg-server-xwayland (run legacy software with minimal issues)
- termite (a terminal emulator that has native wayland support)
- swaylock (logo key + L will lock your screen by default with this config)
- swayidle (extra security if you walk away from your computer without locking it)
- python-pywal (for dynamic system theming)
- grim (for screenshots)
- intel-ucode (if you have an AMD processor, you'll have to manually edit RootSetup.sh, /boot/loader/entries/* , and ~/.config/waybar/config brightness module to implement the AMD alternatives.
- light (supports a wide variety of backlight controllers, and picks the best one automatically)
- neofetch (prints system info whenever you open a terminal, an obvious must-have)
- fzf (not required if using bemenu for program launcher. bemenu is default)
- pulseaudio (wonderful sound server, in case you like to listen to music, podcasts, or watch youtube or videos)
- pulseaudio-alsa (used by keyboard audio controls to prevent turning pulseaudio over 100%, without which would require a gnarly script)
- imagemagick (fulfills dependency for a blurry lock screen. Check out the man page for other ways to rice your screen lock)
- ttf-ubuntu-font-family (legible and lovely font family used by Ubuntu that renders well on a wide variety of screen types)
- https://aur.archlinux.org/packages/ttf-material-design-icons-git.git (one of the few icon sets that supports signal strength for wifi, and precise battery levels)
- bluez - for bluetooth functionality
- bluez-utils - helps automate the bluetooth connection process
- mako (a wayland notification daemon that I haven't yet implimented in this config. Coming soon!)

What's with these setup scripts?
--------------------------------------------------
These are here in case you want to install the config on a fresh system.
To do so, follow the install guide on the arch wiki, but when you get
to the section on bootloaders, stop, and follow these commands. 

- useradd -m -G wheel YourUsername
- EDITOR=nano visudo
- - uncomment the line that says '# %wheel ALL=(ALL) ALL' then exit with ctrl+o
- passwd YourUsername
- su YourUsername
- mkdir Build && cd Build
- sudo pacman -S git
- git clone https://github.com/cyberrumor/SwayEcosystem.git
- chmod +x RootSetup.sh
- chmod +x UserSetup.sh
- sudo ./RootSetup.sh
- ./UserSetup.sh

Don't forget to edit /boot/loader/entries/arch.conf then run '# mkinitcpio -p linux'
If you don't, your system won't boot. After that, restart like this:

- exit
- exit
- umount -a
- shutdown -h now

Remove the installation media, and you'll have my setup. 
