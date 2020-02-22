SwayEcosystem
--------------------------------------------------
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/cyberrumor)

I made this because I want to have a one stop shop
for all the tweaks I typically give a fresh install.

<img src="/home/cyberrumor/makodemo.png">

Here's the same scene, right after swapping wallpapers with pywal:

<img src="/home/cyberrumor/waldemo.png">

Pretty lockscreen achieved by combing [grim](https://github.com/emersion/grim) + [imagemagick](https://imagemagick.org/index.php) + swaylock

<img src="/home/cyberrumor/blurshot.png">

Attention to Detail
--------------------------------------------------
- All parts of the interface are themed with pywal, not just terminal colors. This includes the bar, app launcher, notifications, and even the lock screen. 
- The app launcher and bar are the same height, so you won't notice any distracting or irritating graphic discrepencies. Notification padding has been adjusted to a precision of 1 pixel. 
- Light transparency brings grace to your interface without sacrificing legibility. 


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
- Don't blindly trust, review these scripts before running!
- sudo ./RootSetup.sh
- ./UserSetup.sh

Now you can return to the archwiki install guide. Don't forget to install
and configure a bootloader! 

After you've rebooted and confirmed the system is working correctly, 
I highly recommend configuring [silent boot](https://wiki.archlinux.org/index.php/Silent_boot). 
