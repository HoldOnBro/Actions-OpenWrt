#!/bin/bash

cd openwrt
sed -i '10,15 s/\(#\)\(.*\)/\2/' make.env
OLD=$(grep \+o\" make.env)
NEW=$(grep \+\" make.env)
#echo $OLD
#echo $NEW
cp make.env makeplus.env
sed -i "s/$NEW/#$NEW/" make.env
sed -i "s/$OLD/#$OLD/" makeplus.env
#sync the kernel version
KV=$(find /opt/kernel/ -name "boot*+o.tar.gz" | awk -F '[-.]' '{print $2"."$3"."$4"-"$5"-"$6}')
KPV=$(find /opt/kernel/ -name "boot*+.tar.gz" | awk -F '[-.]' '{print $2"."$3"."$4"-"$5"-"$6}')
sed -i "s/^KERNEL_VERSION.*/KERNEL_VERSION=\"$KV\"/" make.env
sed -i "s/^KERNEL_VERSION.*/KERNEL_VERSION=\"$KPV\"/" makeplus.env

for F in *.sh ; do cp $F ${F%.sh}_plus.sh && cp $F ${F%.sh}_fol.sh;done
find ./* -maxdepth 1 -path "*_plus.sh" | xargs -i sed -i 's/make\.env/makeplus\.env/g' {}
find ./*_plus.sh ./*_fol.sh -maxdepth 1 -path "*" | xargs -i sed -i 's/OP_ROOT_TGZ=\"openwrt/OP_ROOT_TGZ=\"F-openwrt/g' {}
find ./*_plus.sh ./*_fol.sh -maxdepth 1 -path "*" | xargs -i sed -i 's/TGT_IMG=\"\${WORK_DIR}\/openwrt/TGT_IMG=\"\${WORK_DIR}\/F-openwrt/g' {}
echo "mk_files respawned."

cd ..
#diff -uN openwrt/files/update-amlogic-openwrt.sh mk_openwrt_src_20210401/openwrt/files/update-amlogic-openwrt.sh > update-amlogic-openwrt.sh.patch
#diff -uN openwrt/files/update-amlogic-openwrt-old.sh mk_openwrt_src_20210401/openwrt/files/update-amlogic-openwrt-old.sh > update-amlogic-openwrt-old.sh.patch
#diff -uN openwrt/files/update-beikeyun-openwrt.sh mk_openwrt_src_20210401/openwrt/files/update-beikeyun-openwrt.sh > update-beikeyun-openwrt.sh.patch
#diff -uN openwrt/files/update-vplus-openwrt.sh mk_openwrt_src_20210401/openwrt/files/update-vplus-openwrt.sh  > update-vplus-openwrt.sh.patch
#diff -uN openwrt/files/update-l1pro-openwrt.sh mk_openwrt_src_20210401/openwrt/files/update-l1pro-openwrt.sh  > update-l1pro-openwrt.sh.patch
patch -p1 < update-amlogic-openwrt-old.sh.patch
patch -p1 < update-amlogic-openwrt.sh.patch
patch -p1 < update-beikeyun-openwrt.sh.patch
patch -p1 < update-vplus-openwrt.sh.patch
patch -p1 < update-l1pro-openwrt.sh.patch
echo "patching done."
