#!/bin/bash

cp -f /home/xyz/lede/ARMv8*.config /home/xyz/Actions-OpenWrt/aarch64/
cp -f /home/xyz/lede/GDock.config /home/xyz/Actions-OpenWrt/GDock/
cp -f /home/xyz/lede/AX6.config /home/xyz/Actions-OpenWrt/AX6/
cp -f /home/xyz/lede/J4125.config /home/xyz/Actions-OpenWrt/x86_64/
cp -f /home/xyz/lede/x86_64.config /home/xyz/Actions-OpenWrt/x86_64/
cp -f /home/xyz/lede/NewifiD2*.config /home/xyz/Actions-OpenWrt/NewifiD2/

cd /home/xyz/Actions-OpenWrt/
git add ./*
echo -n "now enter commit title:"
read COMMIT
#echo -ne "you entered $COMMIT\n"
git commit -m "$COMMIT"
git commit -a
git push origin master

