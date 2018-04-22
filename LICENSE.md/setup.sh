#!/bin/bash

# install packages
apt-get update && apt-get install --no-install-recommends -y \
xdotool \
iceweasel \
unclutter \
vim \
&& apt-get autoremove -y && apt-get clean

# change language
locale-gen fr_FR.UTF-8 UTF-8
update-locale fr_FR.UTF-8 UTF-8
export LANGUAGE=fr_FR.UTF-8
export LC_ALL=fr_FR.UTF-8

# fix resolution
echo "disable_overscan=1" >> /boot/config.txt

# disable screensaver
sed -i "s/\[SeatDefaults\]\n/\[SeatDefaults\]\nxserver-command=X -s 0 -dpms/g" /etc/lightdm/lightdm.conf
