#!/bin/bash

result=$(echo "$(cat /home/xyz/configs/openwrt/zzz-default-settings)" | grep -Po "DISTRIB_REVISION=\'\K[^\']*")

echo $result

sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$result\"/" /home/xyz/configs/openwrt/mk_beikeyun_opimg.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$result\"/" /home/xyz/configs/openwrt/mk_l1pro_opimg.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$result\"/" /home/xyz/configs/openwrt/mk_n1_opimg.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$result\"/" /home/xyz/configs/openwrt/mk_s905x3_opimg.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=$result/" /home/xyz/configs/openwrt/n1-to-vplus.sh
