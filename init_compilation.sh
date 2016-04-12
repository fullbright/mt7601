#!/bin/bash

sudo apt-get install -y linux-headers-generic build-essential git

cd src

make
sudo make install
sudo mkdir -p /etc/Wireless/RT2870STA/
sudo cp RT2870STA.dat /etc/Wireless/RT2870STA/
sudo modprobe mt7601Usta
