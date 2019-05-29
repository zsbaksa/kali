#!/bin/bash
apt-get update -y
apt install -y curl git live-build cdebootstrap
git clone git://git.kali.org/live-build-config.git
cd live-build-config/
sed -i 's/586-pae/586/g' auto/config
cat << EOF >> kali-config/variant-xfce/package-lists/kali.list.chroot
bettercap
lighttpd
hostapd
isc-dhcp-server
gqrx-sdr
golang
isc-dhcp-server
php7.2
EOF
./build.sh --arch i386 --variant xfce --verbose
