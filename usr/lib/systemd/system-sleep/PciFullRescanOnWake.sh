# place in /usr/lib/systemd/system-sleep/
# then run # chmod +x /usr/lib/systemd/system-sleep/PciFullRescanOnWake.sh
# fixes issues with wifi breaking after wake from suspend
# all credit to Seth in this thread
# https://bbs.archlinux.org/viewtopic.php?id=231501

#!/bin/sh
echo 1 > /sys/bus/pci/rescan
