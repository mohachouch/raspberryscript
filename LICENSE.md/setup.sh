#!/bin/bash

# install packages
apt-get update && apt-get install --no-install-recommends -y \
xdotool \
iceweasel \
unclutter \
vim \
&& apt-get autoremove -y && apt-get clean

# fix resolution
echo "disable_overscan=1" >> /boot/config.txt
echo "hdmi_group=1" >> /boot/config.txt
echo "hdmi_mode=16" >> /boot/config.txt
echo "overscan_left=20" >> /boot/config.txt
echo "overscan_right=20" >> /boot/config.txt
echo "overscan_top=20" >> /boot/config.txt
echo "overscan_bottom=20" >> /boot/config.txt

# disable screensaver
sed -i "s/\[SeatDefaults\]\n/\[SeatDefaults\]\nxserver-command=X -s 0 -dpms/g" /etc/lightdm/lightdm.conf

