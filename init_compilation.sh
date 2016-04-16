#!/bin/bash

sudo apt-get install -y linux-headers-generic build-essential git

cd $(dirname $0)/src

make
sudo make install
sudo mkdir -p /etc/Wireless/RT2870STA/
sudo cp RT2870STA.dat /etc/Wireless/RT2870STA/
#sudo cp RT2870STA.dat /lib/firmware/
sudo modprobe mt7601Usta

#echo "Adding the newly compiled module to /etc/modules"
#if grep -q "mt7601Usta" /etc/modules; then
#    echo "mt7601Usta" >> /etc/modules
#fi
