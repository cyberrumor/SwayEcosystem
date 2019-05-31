SwayEcosystem
--------------------------------------------------
I made this because I want to have a one stop shop
for all the tweaks I typically give a fresh install.
Known issues include:
backlight controls from light stop working after resume from suspend.

This config uses
--------------------------------------------------
base
base-devel
wpa_supplicant
dialog
git
xdg-user-dirs
ufw
sway
xorg-server-xwayland
termite
swaylock
swayidle
python-pywal
grim
intel-ucode
light
neofetch
fzf
pulseaudio
pulseaudio-alsa
imagemagick
mako (not implimented yet)

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

Don't forget to edit /boot/loader/entries/arch.conf then run # mkinitcpio -p linux
If you don't, your system won't boot. After that, restart like this:

- exit
- exit
- umount -a
- shutdown -h now

Remove the installation media, and you'll have my setup. 
