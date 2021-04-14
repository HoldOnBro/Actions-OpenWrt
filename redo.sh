#!/bin/bash

cd /home/xyz/Actions-OpenWrt && git pull
cd /home/xyz/lede && git pull
cd /home/xyz/lede/package/luci-app-vssr && git pull
cd /home/xyz/lede/package/lua-maxminddb && git pull
rm -rf /home/xyz/lede/package/lean/luci-app-dockerman
cp /home/xyz/Actions-OpenWrt/*/*.config /home/xyz/lede/
rm -rf /home/xyz/lede/package/r8125-mod
cd /home/xyz/lede/package/openwrt-udp2raw && git pull
cd /home/xyz/lede/package/luci-app-udp2raw && git pull
sed -i "s/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=f2f90a9a150be94d50af555b53657a2a4309f287/" /home/xyz/lede/package/openwrt-udp2raw/Makefile
sed -i "s/PKG_VERSION:=.*/PKG_VERSION:=20200920\.0/" /home/xyz/lede/package/openwrt-udp2raw/Makefile
cd /home/xyz/lede/package/luci-theme-opentopd && git pull
cd /home/xyz/lede/package/luci-theme-infinityfreedom && git pull
cd /home/xyz/lede/package/luci-theme-Butterfly-dark && git pull
cd /home/xyz/lede/package/luci-theme-Butterfly && git pull
cd /home/xyz/lede/package/OpenAppFilter && git pull
cd /home/xyz/lede/package/luci-app-jd-dailybonus && git pull
cd /home/xyz/lede/package/luci-app-ttnode && git pull
cd /home/xyz/lede/package/luci-app-adguardhome && git pull
cd /home/xyz/lede/package/luci-app-dockerman && git pull
cd /home/xyz/lede/package/luci-app-serverchan && git pull
cd /home/xyz/lede/package/luci-theme-opentomcat && git pull
cd /home/xyz/lede/package/luci-theme-atmaterial && git pull
cd /home/xyz/lede/package/luci-app-koolddns && git pull
cd /home/xyz/lede/package/luci-app-autoipsetadder && git pull
cd /home/xyz/lede/package/luci-app-dnsfilter && git pull
cd /home/xyz/lede/package/luci-app-godproxy && git pull
cd /home/xyz/sub-web && git pull
sed -i "s/\ \ publicPath:.*/\ \ publicPath:\ \ \'\.\/\'\,/" /home/xyz/sub-web/vue.config.js
sed -i "s/\ \ \ \ path:.*/\ \ \ \ path:\ \"\*\"\,/" /home/xyz/sub-web/src/router/index.js
yarn build
cd /home/xyz/aclsub && git pull && yarn build

rm -rf /home/xyz/lede/package/luci-app-smartdns
rm -rf /home/xyz/lede/package/smartdns
rm -rf /home/xyz/lede/package/wrtbwmon
rm -rf /home/xyz/lede/package/luci-app-bypass
rm -rf /home/xyz/lede/package/lean/luci-app-wrtbwmon
rm -rf /home/xyz/lede/package/luci-theme-rosy
rm -rf /home/xyz/lede/package/luci-theme-purple
rm -rf /home/xyz/lede/package/luci-theme-darkmatter
rm -rf /home/xyz/lede/package/luci-theme-opentomato
rm -rf /home/xyz/lede/package/luci-theme-edge
rm -rf /home/xyz/lede/package/luci-theme-argon_new
rm -rf /home/xyz/lede/package/luci-app-openclash
rm -rf /home/xyz/lede/package/brook
rm -rf /home/xyz/lede/package/chinadns-ng
rm -rf /home/xyz/lede/package/tcping
rm -rf /home/xyz/lede/package/trojan-go
rm -rf /home/xyz/lede/package/trojan-plus
rm -rf /home/xyz/lede/package/v2ray
rm -rf /home/xyz/lede/package/luci-app-filebrowser
rm -rf /home/xyz/lede/package/filebrowser
rm -rf /home/xyz/lede/package/luci-app-fileassistant
rm -rf /home/xyz/lede/package/luci-app-passwall
rm -rf /home/xyz/lede/package/luci-app-eqos
rm -rf /home/xyz/lede/package/luci-app-gost
rm -rf /home/xyz/lede/package/gost
rm -rf /home/xyz/lede/package/luci-app-ssr-plus
rm -rf /home/xyz/lede/package/naiveproxy
rm -rf /home/xyz/lede/package/ssocks
rm -rf /home/xyz/lede/package/xray-core
rm -rf /home/xyz/lede/package/r8125-mod
rm -rf /home/xyz/lede/package/xray-plugin
#rm -rf /home/xyz/lede/package/subweb
rm -rf /home/xyz/lede/package/subconverter
rm -rf /home/xyz/lede/package/jpcre2
rm -rf /home/xyz/lede/package/rapidjson
rm -rf /home/xyz/lede/package/luci-app-unblockneteasemusic-mini
rm -rf /home/xyz/lede/package/luci-app-socat
rm -rf /home/xyz/lede/package/ddnsto
rm -rf /home/xyz/lede/package/luci-app-ddnsto
rm -rf /home/xyz/lede/package/shadowsocks-rust
rm -rf /home/xyz/lede/package/smartdns-le
rm -rf /home/xyz/lede/package/quickjspp
rm -rf /home/xyz/lede/package/libcron
rm -rf /home/xyz/lede/package/luci-app-advancedsetting

svn co https://github.com/brvphoenix/wrtbwmon/trunk/wrtbwmon /home/xyz/lede/package/wrtbwmon
#rm -rf /home/xyz/lede/package/luci-app-ksmbd
git clone https://github.com/garypang13/luci-app-bypass /home/xyz/lede/package/luci-app-bypass
find /home/xyz/lede/package/*/ /home/xyz/lede/feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find /home/xyz/lede/package/*/ /home/xyz/lede/feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
find /home/xyz/lede/package/luci-app-bypass/* -maxdepth 8 -path "*" | xargs -i sed -i 's/smartdns-le/smartdns/g' {}
svn co https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy /home/xyz/lede/package/luci-theme-rosy
svn co https://github.com/rosywrt/luci-theme-purple/trunk/luci-theme-purple /home/xyz/lede/package/luci-theme-purple
svn co https://github.com/apollo-ng/luci-theme-darkmatter/trunk/luci/themes/luci-theme-darkmatter /home/xyz/lede/package/luci-theme-darkmatter
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomato /home/xyz/lede/package/luci-theme-opentomato
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-edge /home/xyz/lede/package/luci-theme-edge
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argon_new /home/xyz/lede/package/luci-theme-argon_new
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash /home/xyz/lede/package/luci-app-openclash
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook /home/xyz/lede/package/brook
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng /home/xyz/lede/package/chinadns-ng
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping /home/xyz/lede/package/tcping
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go /home/xyz/lede/package/trojan-go
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus /home/xyz/lede/package/trojan-plus
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall /home/xyz/lede/package/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks /home/xyz/lede/package/ssocks
svn co https://github.com/fw876/helloworld/trunk/xray-core /home/xyz/lede/package/xray-core
svn co https://github.com/fw876/helloworld/trunk/xray-plugin /home/xyz/lede/package/xray-plugin
svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust /home/xyz/lede/package/shadowsocks-rust
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/xray-core /home/xyz/lede/package/xray-core

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos /home/xyz/lede/package/luci-app-eqos
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-advancedsetting /home/xyz/lede/package/luci-app-advancedsetting
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-gost /home/xyz/lede/package/luci-app-gost
#svn co https://github.com/kenzok8/openwrt-packages/trunk/gost /home/xyz/lede/package/gost
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus /home/xyz/lede/package/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/trunk/naiveproxy /home/xyz/lede/package/naiveproxy

#svn co https://github.com/HoldOnBro/Actions-OpenWrt/trunk/x86_64/r8125-mod /home/xyz/lede/package/r8125-mod


#svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/subweb /home/xyz/lede/package/subweb

svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/quickjspp /home/xyz/lede/package/quickjspp
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/jpcre2 /home/xyz/lede/package/jpcre2
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/libcron/ /home/xyz/lede/package/libcron
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/libs/rapidjson /home/xyz/lede/package/rapidjson
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-filebrowser /home/xyz/lede/package/luci-app-filebrowser
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/utils/filebrowser /home/xyz/lede/package/filebrowser
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-fileassistant /home/xyz/lede/package/luci-app-fileassistant
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-socat /home/xyz/lede/package/luci-app-socat
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-gost /home/xyz/lede/package/luci-app-gost
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/gost /home/xyz/lede/package/gost
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-unblockneteasemusic-mini /home/xyz/lede/package/luci-app-unblockneteasemusic-mini
svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/subconverter /home/xyz/lede/package/subconverter
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns /home/xyz/lede/package/luci-app-smartdns

svn co https://github.com/garypang13/openwrt-packages/trunk/smartdns-le /home/xyz/lede/package/smartdns-le
#svn co https://github.com/openwrt/luci/trunk/applications/luci-app-ksmbd /home/xyz/lede/package/luci-app-ksmbd
chmod 0755 /home/xyz/lede/package/luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755 /home/xyz/lede/package/luci-app-koolddns/root/usr/share/koolddns/aliddns
sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' /home/xyz/lede/package/lean/luci-app-cpufreq/Makefile

svn co https://github.com/linkease/ddnsto-openwrt/trunk/ddnsto /home/xyz/lede/package/ddnsto
svn co https://github.com/linkease/ddnsto-openwrt/trunk/luci-app-ddnsto /home/xyz/lede/package/luci-app-ddnsto
#sed -i "s/PKG_SOURCE_URL:=.*/PKG_SOURCE_URL:=https:\/\/github\.com\/1715173329\/dnsforwarder\.git/" /home/xyz/lede/package/lean/dnsforwarder/Makefile
#sed -i "s/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=693b554e59479c2867c74f0bb5e26290b93747c5/" /home/xyz/lede/package/lean/dnsforwarder/Makefile
#sed -i "s/\ \ URL:=.*/\ \ URL:=https:\/\/github\.com\/1715173329\/dnsforwarder/" /home/xyz/lede/package/lean/dnsforwarder/Makefile
#修改makefile
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/luci\.mk/include \$(TOPDIR)\/feeds\/luci\/luci\.mk/g' {}
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/lang\/golang\/golang\-package\.mk/include \$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang\-package\.mk/g' {}
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHREPO/PKG_SOURCE_URL:=https:\/\/github\.com/g' {}
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload\.github\.com/g' {}
/home/xyz/lede/scripts/feeds update -a
/home/xyz/lede/scripts/feeds install -a

cd /home/xyz/lede/ && make menuconfig
