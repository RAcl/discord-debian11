#!/bin/bash
#
# Ubuntu package to debian 11 package and install
# Base: https://www.linuxcapable.com/how-to-install-discord-on-debian-11-bullseye
#
# Roy Alvear <racl@gulix.cl>
#
if [ $# -eq 0 ] ; then
    echo "Error:\n\tUse: $0 discord-{VERSION}.deb"
    exit 0
fi
discordDEB=$1
dpkg-deb -x $discordDEB unpack
dpkg-deb --control $discordDEB
mv DEBIAN unpack
sed 's/libappindicator1/libayatana-appindicator1/' unpack/DEBIAN/control -i
VERSION=$(grep 'Version' unpack/DEBIAN/control | awk -F: '{print $2}' | sed 's/ //g')
FIXED=$(echo discord-debian-${VERSION}.deb)
sudo chown root:root -R unpack
dpkg -b unpack $FIXED
sudo rm -rf unpack
sudo apt install ./$FIXED
