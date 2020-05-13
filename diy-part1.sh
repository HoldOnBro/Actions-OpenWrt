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
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/vernesong/OpenClash.git
mv OpenClash/luci-app-openclash/ package/
pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/Lienol/openwrt-package.git ./lienols/openwrt-package
mv lienols/openwrt-package/lienol/luci-theme* package/
rm -rf lienols
git clone https://github.com/Lienol/openwrt-package/tree/master/lienol/luci-theme-argon-dark-mod package/uci-theme-argon-dark-mod
git clone https://github.com/Lienol/openwrt-package/tree/master/lienol/luci-theme-argon-light-mod package/uci-theme-argon-light-mod
git clone https://github.com/Lienol/openwrt-package/tree/master/lienol/luci-theme-bootstrap-mod package/luci-theme-bootstrap-mod
svn co https://github.com/Lienol/openwrt-package/tree/master/package/brook package/brook
svn co https://github.com/Lienol/openwrt-package/tree/master/package/chinadns-ng package/chinadns-ng
svn co https://github.com/Lienol/openwrt-package/tree/master/package/tcping package/tcping
svn co https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-eqos package/luci-app-eqos
svn co https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-passwall package/luci-app-passwall
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/xrouterservice/luci-app-koolddns.git package/luci-app-koolddns
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
#赋予koolddns权限
chmod 0755 package/luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755 package/luci-app-koolddns/root/usr/share/koolddns/aliddns
