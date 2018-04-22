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

# disable screensaver
sed -i "s/\[SeatDefaults\]\n/\[SeatDefaults\]\nxserver-command=X -s 0 -dpms/g" /etc/lightdm/lightdm.conf

