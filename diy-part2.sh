#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#移除不用软件包    
rm -rf package/lean/luci-app-dockerman
#添加额外软件包
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
# Clone OpenClash
git clone -b master https://github.com/vernesong/OpenClash.git
mv OpenClash/luci-app-openclash/ package/
rm -rf OpenClash

# 编译 po2lmo (如果有po2lmo可跳过)
pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd

git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-theme-argon-dark-mod package/luci-theme-argon-dark-mod
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-theme-argon-light-mod package/luci-theme-argon-light-mod
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-theme-bootstrap-mod package/luci-theme-bootstrap-mod
svn co https://github.com/Lienol/openwrt-package/trunk/package/brook package/brook
svn co https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
svn co https://github.com/Lienol/openwrt-package/trunk/package/tcping package/tcping
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-filebrowser package/luci-app-filebrowser
#svn co https://github.com/esirplayground/Lienol-obsolete/trunk/luci-app-passwall package/luci-app-passwall
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos package/luci-app-eqos
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/xrouterservice/luci-app-koolddns.git package/luci-app-koolddns
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
#赋予koolddns权限
chmod 0755 package/luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755 package/luci-app-koolddns/root/usr/share/koolddns/aliddns

#添加subconverter
#git clone https://github.com/tindy2013/openwrt-subconverter.git package/open-subconverter
#mv package/open-subconverter/rapidjson package/
#mv package/open-subconverter/subconverter/ package/
#rm -rf package/open-subconverter
#添加subweb
#svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/subweb package/subweb
#添加martdns
#svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/smartdns package/smartdns
#svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns package/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
./scripts/feeds update -a
./scripts/feeds install -a
