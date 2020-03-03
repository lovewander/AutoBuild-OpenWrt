#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================

##################################
# Custom feed
##################################
# add lienol feed: such like passwall and themes
echo ""
echo "Adding lienol packages feed"
echo "src-git lienol https://github.com/Lienol/openwrt-package" >> feeds.conf.default

echo ""
echo "Updating feeds"
./scripts/feeds update -a

echo ""
echo "Installing feeds"
./scripts/feeds install -a


#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
