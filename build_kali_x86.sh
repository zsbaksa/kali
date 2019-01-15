#!/bin/bash
apt-get update -y
apt install -y curl git live-build cdebootstrap
git clone git://git.kali.org/live-build-config.git
cd live-build-config/
sed -i 's/586-pae/586/g' auto/config
./build.sh --arch i386 --variant xfce --verbose