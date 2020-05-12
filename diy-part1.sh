#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#移除不用软件包    
rm -rf package/lean/luci-app-dockerman
#添加额外软件包
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
svn co https://github.com/bin20088/openwrt-package/trunk/package/brook package/brook
svn co https://github.com/bin20088/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
svn co https://github.com/bin20088/openwrt-package/trunk/package/tcping package/tcping
svn co https://github.com/bin20088/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/bin20088/luci-theme-argon-mc.git package/luci-theme-argon-mc
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/bin20088/luci-theme-butongwifi.git package/luci-theme-butongwifi
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/Repobor/luci-app-koolproxyR.git package/luci-app-koolproxyR
git clone https://github.com/bin20088/luci-app-koolddns.git package/luci-app-koolddns
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
#赋予koolddns权限
chmod 0755 package/luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755 package/luci-app-koolddns/root/usr/share/koolddns/aliddns
