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
rm -rf package/lean/luci-app-wrtbwmon
rm -rf feeds/packages/net/smartdns
#添加额外软件包
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

#replace mirrors
#rm -rf ./include
#rm -rf ./ scripts
#svn co https://github.com/immortalwrt/immortalwrt/trunk/include
#svn co https://github.com/immortalwrt/immortalwrt/trunk/scripts

git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-ttnode.git package/luci-app-ttnode
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
svn co https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman package/luci-app-dockerman
git clone https://github.com/rufengsuixing/luci-app-autoipsetadder.git package/luci-app-autoipsetadder
git clone https://github.com/mchome/openwrt-dogcom.git package/openwrt-dogcom
#git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter
git clone https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus
git clone https://github.com/project-lede/luci-app-godproxy package/luci-app-godproxy

#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#cp -r package/OpenClash/luci-app-openclash package/
#rm -rf package/OpenClash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
# 编译 po2lmo (如果有po2lmo可跳过)
pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/brook
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/chinadns-ng
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/tcping
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/trojan-go
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/trojan-plus
#svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-filebrowser package/luci-app-filebrowser
#svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/utils/filebrowser package/filebrowser
#svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-fileassistant package/luci-app-fileassistant
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-socat package/luci-app-socat
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall package/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/ssocks
svn co https://github.com/fw876/helloworld/trunk/xray-core package/xray-core
svn co https://github.com/fw876/helloworld/trunk/xray-plugin package/xray-plugin
svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/shadowsocks-rust
svn co https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/shadowsocksr-libev
svn co https://github.com/fw876/helloworld/trunk/v2ray-plugin package/v2ray-plugin
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/xray-core package/xray-core
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-gost package/luci-app-gost
#svn co https://github.com/kenzok8/openwrt-packages/trunk/gost package/gost
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-gost package/luci-app-gost
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/gost package/gost
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos package/luci-app-eqos
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
# cd package/luci-app-serverchan && git reset --hard 6387b3b47b03d95d3f3bcd42ff98db5bb84fd056 && git pull && cd ../..
svn co https://github.com/brvphoenix/wrtbwmon/trunk/wrtbwmon package/wrtbwmon
git clone https://github.com/brvphoenix/luci-app-wrtbwmon
cd luci-app-wrtbwmon
git reset --hard ff7773abbf71120fc39a276393b29ba47353a7e2
cp -r luci-app-wrtbwmon ../package/
cd ..
# themes
git clone https://github.com/Leo-Jo-My/luci-theme-Butterfly package/luci-theme-Butterfly
git clone https://github.com/Leo-Jo-My/luci-theme-Butterfly-dark package/luci-theme-Butterfly-dark
svn co https://github.com/apollo-ng/luci-theme-darkmatter/trunk/luci/themes/luci-theme-darkmatter package/luci-theme-darkmatter
svn co https://github.com/solidus1983/luci-theme-opentomato/trunk/luci/themes/luci-theme-opentomato package/luci-theme-opentomato
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-edge package/luci-theme-edge
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argon_new package/luci-theme-argon_new
svn co https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy package/luci-theme-rosy
#svn co https://github.com/rosywrt/luci-theme-purple/trunk/luci-theme-purple package/luci-theme-purple
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd
git clone https://github.com/xrouterservice/luci-app-koolddns.git package/luci-app-koolddns
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/trunk/naiveproxy package/naiveproxy
#赋予koolddns权限
chmod 0755 package/luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755 package/luci-app-koolddns/root/usr/share/koolddns/aliddns

svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-unblockneteasemusic-mini package/luci-app-unblockneteasemusic-mini
#添加subweb&subconverter
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/quickjspp package/quickjspp
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/jpcre2 package/jpcre2
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/libcron/ package/libcron
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/rapidjson package/rapidjson
#svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/subweb package/subweb
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/subconverter package/subconverter
#添加smartdns
#svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/smartdns package/smartdns
svn co https://github.com/kenzok8/openwrt-packages/trunk/smartdns package/smartdns
svn co https://github.com/garypang13/openwrt-packages/trunk/smartdns-le package/smartdns-le
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/luci-app-smartdns

#git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
svn co https://github.com/linkease/ddnsto-openwrt/trunk/ddnsto package/ddnsto
svn co https://github.com/linkease/ddnsto-openwrt/trunk/luci-app-ddnsto package/luci-app-ddnsto
#添加ksmbd
#svn co https://github.com/openwrt/luci/trunk/applications/luci-app-ksmbd package/luci-app-ksmbd
#添加udp2raw
#git clone https://github.com/sensec/openwrt-udp2raw package/openwrt-udp2raw
#git clone https://github.com/sensec/luci-app-udp2raw package/luci-app-udp2raw
#sed -i "s/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=f2f90a9a150be94d50af555b53657a2a4309f287/" package/openwrt-udp2raw/Makefile
#sed -i "s/PKG_VERSION:=.*/PKG_VERSION:=20200920\.0/" package/openwrt-udp2raw/Makefile
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/udp2raw-tunnel package/udp2raw-tunnel
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-udp2raw package/luci-app-udp2raw
#添加luci-app-advanced
git clone https://github.com/sirpdboy/luci-app-advanced package/luci-app-advanced
#添加luci-app-amlogic
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
#添加argon-config 使用 最新argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
rm -rf package/lean/luci-theme-argon/
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
#修改makefile
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/luci\.mk/include \$(TOPDIR)\/feeds\/luci\/luci\.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/lang\/golang\/golang\-package\.mk/include \$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang\-package\.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHREPO/PKG_SOURCE_URL:=https:\/\/github\.com/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload\.github\.com/g' {}
#svn co https://github.com/immortalwrt/immortalwrt/trunk/include/download.mk include/download.mk
#svn co https://github.com/immortalwrt/immortalwrt/trunk/include/package-immortalwrt.mk include/package-immortalwrt.mk

#readd cpufreq for aarch64
sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/lean/luci-app-cpufreq/Makefile

#replace coremark.sh with the new one
cp -f $GITHUB_WORKSPACE/general/coremark.sh feeds/packages/utils/coremark/

find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-alt/shadowsocksr-libev-ssr-redir/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-server/shadowsocksr-libev-ssr-server/g' {}
#修改bypass的makefile
#find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
#find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

svn co https://github.com/kiddin9/openwrt-bypass/trunk/luci-app-bypass package/luci-app-bypass
find package/luci-app-bypass/* -maxdepth 8 -path "*" | xargs -i sed -i 's/smartdns-le/smartdns/g' {}

#temp fix for dnsforwarder
#sed -i "s/PKG_SOURCE_URL:=.*/PKG_SOURCE_URL:=https:\/\/github\.com\/1715173329\/dnsforwarder\.git/" package/lean/dnsforwarder/Makefile
#sed -i "s/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=587e61ae4d75dc976f538088b715a3c8ee26c144/" package/lean/dnsforwarder/Makefile
#sed -i "s/\ \ URL:=.*/\ \ URL:=https:\/\/github\.com\/1715173329\/dnsforwarder/" package/lean/dnsforwarder/Makefile

./scripts/feeds update -a
./scripts/feeds install -a
