#!/bin/bash

#移除旧的软件包
rm -rf /home/xyz/lede/feeds/luci/applications/luci-app-dockerman
rm -rf /home/xyz/lede/feeds/luci/applications/luci-app-wrtbwmon
rm -rf /home/xyz/lede/feeds/packages/net/smartdns
rm -rf /home/xyz/lede/feeds/packages/net/mosdns
rm -rf /home/xyz/lede/package/luci-app-dockerman
rm -rf /home/xyz/lede/package/luci-app-openclash
rm -rf /home/xyz/lede/package/brook
rm -rf /home/xyz/lede/package/gost
rm -rf /home/xyz/lede/package/quickjspp
rm -rf /home/xyz/lede/package/jpcre2
rm -rf /home/xyz/lede/package/libcron
rm -rf /home/xyz/lede/package/rapidjson
rm -rf /home/xyz/lede/package/subconverter
rm -rf /home/xyz/lede/package/toml11
rm -rf /home/xyz/lede/package/udp2raw
rm -rf /home/xyz/lede/package/luci-app-socat
rm -rf /home/xyz/lede/package/luci-app-gost
rm -rf /home/xyz/lede/package/luci-app-smartdns
rm -rf /home/xyz/lede/package/luci-app-udp2raw
rm -rf /home/xyz/lede/package/chinadns-ng
rm -rf /home/xyz/lede/package/tcping
rm -rf /home/xyz/lede/package/trojan-go
rm -rf /home/xyz/lede/package/trojan-plus
rm -rf /home/xyz/lede/package/ssocks
rm -rf /home/xyz/lede/package/hysteria
rm -rf /home/xyz/lede/package/dns2tcp
rm -rf /home/xyz/lede/package/luci-app-passwall2
rm -rf /home/xyz/lede/package/naiveproxy
rm -rf /home/xyz/lede/package/lua-neturl
rm -rf /home/xyz/lede/package/gn
rm -rf /home/xyz/lede/package/xray-core
rm -rf /home/xyz/lede/package/xray-plugin
rm -rf /home/xyz/lede/package/shadowsocks-rust
rm -rf /home/xyz/lede/package/shadowsocksr-libev
rm -rf /home/xyz/lede/package/v2ray-plugin
rm -rf /home/xyz/lede/package/simple-obfs
rm -rf /home/xyz/lede/package/trojan
rm -rf /home/xyz/lede/package/v2ray-core
rm -rf /home/xyz/lede/package/v2ray-geodata
rm -rf /home/xyz/lede/package/sagernet-core
rm -rf /home/xyz/lede/package/microsocks
rm -rf /home/xyz/lede/package/redsocks2
rm -rf /home/xyz/lede/package/ipt2socks
rm -rf /home/xyz/lede/package/dns2socks
rm -rf /home/xyz/lede/package/luci-app-ssr-plus
rm -rf /home/xyz/lede/package/smartdns
rm -rf /home/xyz/lede/package/luci-app-passwall
rm -rf /home/xyz/lede/package/luci-app-eqos
rm -rf /home/xyz/lede/package/mosdns
rm -rf /home/xyz/lede/package/luci-app-mosdns
rm -rf /home/xyz/lede/package/luci-theme-edge
rm -rf /home/xyz/lede/package/luci-lib-taskd
rm -rf /home/xyz/lede/package/taskd
rm -rf /home/xyz/lede/package/luci-lib-xterm
rm -rf /home/xyz/lede/package/alist
rm -rf /home/xyz/lede/package/luci-app-alist
rm -rf /home/xyz/lede/package/luci-app-advanced
rm -rf /home/xyz/lede/package/ddnsto
rm -rf /home/xyz/lede/package/luci-app-ddnsto
rm -rf /home/xyz/lede/package/luci-app-ikoolproxy
rm -rf /home/xyz/lede/package/luci-theme-darkmatter
rm -rf /home/xyz/lede/package/luci-theme-opentomato
rm -rf /home/xyz/lede/package/luci-theme-rosy
rm -rf /home/xyz/lede/package/app-store-ui
rm -rf /home/xyz/lede/package/luci-app-store
rm -rf /home/xyz/lede/package/luci-app-amlogic
rm -rf /home/xyz/lede/package/tuic-client

#更新仓库
cd /home/xyz/Actions-OpenWrt && git pull
cd /home/xyz/lede && git pull
cd /home/xyz/lede/package/OpenAppFilter && git pull
cd /home/xyz/lede/package/luci-app-jd-dailybonus && git pull
cd /home/xyz/lede/package/luci-app-ttnode && git pull
cd /home/xyz/lede/package/lua-maxminddb && git pull
cd /home/xyz/lede/package/luci-app-vssr && git pull
cd /home/xyz/lede/package/luci-app-adguardhome && git pull
cd /home/xyz/lede/package/luci-app-autoipsetadder && git pull
cd /home/xyz/lede/package/openwrt-dogcom && git pull
cd /home/xyz/lede/package/luci-app-dogcom && git pull
cd /home/xyz/lede/package/luci-app-serverchan && git pull
cd /home/xyz/lede/package/luci-theme-Butterfly && git pull
cd /home/xyz/lede/package/luci-theme-Butterfly-dark && git pull
cd /home/xyz/lede/package/luci-theme-infinityfreedom && git pull
cd /home/xyz/lede/package/luci-theme-opentomcat && git pull
cd /home/xyz/lede/package/luci-theme-atmaterial && git pull
cd /home/xyz/lede/package/luci-theme-opentopd && git pull
cd /home/xyz/lede/package/luci-app-argon-config && git pull
cd /home/xyz/lede/package/luci-theme-argon && git pull

cd /home/xyz/lede/luci-app-dockerman && git pull
cd /home/xyz/lede/OpenClash && git pull
cd /home/xyz/lede/immortalwrt-packages && git pull
cd /home/xyz/lede/immortalwrt-luci && git pull
cd /home/xyz/lede/openwrt-passwall && git pull
cd /home/xyz/lede/openwrt-passwall2 && git pull
cd /home/xyz/lede/helloworld && git pull
cd /home/xyz/lede/kenzok8-packages && git pull
cd /home/xyz/lede/luci-theme-darkmatter && git pull
cd /home/xyz/lede/luci-theme-opentomato && git pull
cd /home/xyz/lede/luci-theme-rosy && git pull
cd /home/xyz/lede/istore-ui && git pull
cd /home/xyz/lede/istore && git pull
cd /home/xyz/lede/luci-app-amlogic && git pull

cp /home/xyz/Actions-OpenWrt/*/*.config /home/xyz/lede/

cd /home/xyz/sub-web && git pull
sed -i "/module\.exports\ =\ {/a\ \ publicPath:\ \ \'\.\/\'\," /home/xyz/sub-web/vue.config.js
sed -i "s/\ \ \ \ path:.*/\ \ \ \ path:\ \"\*\"\,/" /home/xyz/sub-web/src/router/index.js
yarn build
cd /home/xyz/aclsub && git pull && yarn build

cp -rf /home/xyz/lede/luci-app-dockerman/applications/luci-app-dockerman /home/xyz/lede/package/luci-app-dockerman
cp -rf /home/xyz/lede/OpenClash/luci-app-openclash /home/xyz/lede/package/luci-app-openclash

cp -rf /home/xyz/lede/immortalwrt-packages/net/brook /home/xyz/lede/package/brook
cp -rf /home/xyz/lede/immortalwrt-packages/net/gost /home/xyz/lede/package/gost
cp -rf /home/xyz/lede/immortalwrt-packages/libs/quickjspp /home/xyz/lede/package/quickjspp
cp -rf /home/xyz/lede/immortalwrt-packages/libs/jpcre2 /home/xyz/lede/package/jpcre2
cp -rf /home/xyz/lede/immortalwrt-packages/libs/libcron /home/xyz/lede/package/libcron
cp -rf /home/xyz/lede/immortalwrt-packages/libs/rapidjson /home/xyz/lede/package/rapidjson
cp -rf /home/xyz/lede/immortalwrt-packages/net/subconverter /home/xyz/lede/package/subconverter
cp -rf /home/xyz/lede/immortalwrt-packages/libs/toml11 /home/xyz/lede/package/toml11
cp -rf /home/xyz/lede/immortalwrt-packages/net/udp2raw /home/xyz/lede/package/udp2raw

cp -rf /home/xyz/lede/immortalwrt-luci/applications/luci-app-socat /home/xyz/lede/package/luci-app-socat
cp -rf /home/xyz/lede/immortalwrt-luci/applications/luci-app-gost /home/xyz/lede/package/luci-app-gost
cp -rf /home/xyz/lede/immortalwrt-luci/applications/luci-app-smartdns /home/xyz/lede/package/luci-app-smartdns
cp -rf /home/xyz/lede/immortalwrt-luci/applications/luci-app-udp2raw /home/xyz/lede/package/luci-app-udp2raw

cp -rf /home/xyz/lede/openwrt-passwall/chinadns-ng /home/xyz/lede/package/chinadns-ng
cp -rf /home/xyz/lede/openwrt-passwall/tcping /home/xyz/lede/package/tcping
cp -rf /home/xyz/lede/openwrt-passwall/trojan-go /home/xyz/lede/package/trojan-go
cp -rf /home/xyz/lede/openwrt-passwall/trojan-plus /home/xyz/lede/package/trojan-plus
cp -rf /home/xyz/lede/openwrt-passwall/ssocks /home/xyz/lede/package/ssocks
cp -rf /home/xyz/lede/openwrt-passwall/hysteria /home/xyz/lede/package/hysteria
cp -rf /home/xyz/lede/openwrt-passwall/dns2tcp /home/xyz/lede/package/dns2tcp

cp -rf /home/xyz/lede/openwrt-passwall2/luci-app-passwall2 /home/xyz/lede/package/luci-app-passwall2

cp -rf /home/xyz/lede/helloworld/naiveproxy /home/xyz/lede/package/naiveproxy
cp -rf /home/xyz/lede/helloworld/lua-neturl /home/xyz/lede/package/lua-neturl
cp -rf /home/xyz/lede/helloworld/gn /home/xyz/lede/package/gn
cp -rf /home/xyz/lede/helloworld/xray-core /home/xyz/lede/package/xray-core
cp -rf /home/xyz/lede/helloworld/xray-plugin /home/xyz/lede/package/xray-plugin
cp -rf /home/xyz/lede/helloworld/shadowsocks-rust /home/xyz/lede/package/shadowsocks-rust
cp -rf /home/xyz/lede/helloworld/shadowsocksr-libev /home/xyz/lede/package/shadowsocksr-libev
cp -rf /home/xyz/lede/helloworld/v2ray-plugin /home/xyz/lede/package/v2ray-plugin
cp -rf /home/xyz/lede/helloworld/simple-obfs /home/xyz/lede/package/simple-obfs
cp -rf /home/xyz/lede/helloworld/trojan /home/xyz/lede/package/trojan
cp -rf /home/xyz/lede/helloworld/v2ray-core /home/xyz/lede/package/v2ray-core
cp -rf /home/xyz/lede/helloworld/v2ray-geodata /home/xyz/lede/package/v2ray-geodata
cp -rf /home/xyz/lede/helloworld/sagernet-core /home/xyz/lede/package/sagernet-core
cp -rf /home/xyz/lede/helloworld/microsocks /home/xyz/lede/package/microsocks
cp -rf /home/xyz/lede/helloworld/redsocks2 /home/xyz/lede/package/redsocks2
cp -rf /home/xyz/lede/helloworld/ipt2socks /home/xyz/lede/package/ipt2socks
cp -rf /home/xyz/lede/helloworld/dns2socks /home/xyz/lede/package/dns2socks
cp -rf /home/xyz/lede/helloworld/luci-app-ssr-plus /home/xyz/lede/package/luci-app-ssr-plus
cp -rf /home/xyz/lede/helloworld/tuic-client /home/xyz/lede/package/tuic-client

cp -rf /home/xyz/lede/kenzok8-packages/smartdns /home/xyz/lede/package/smartdns
cp -rf /home/xyz/lede/kenzok8-packages/luci-app-passwall /home/xyz/lede/package/luci-app-passwall
cp -rf /home/xyz/lede/kenzok8-packages/luci-app-eqos /home/xyz/lede/package/luci-app-eqos
cp -rf /home/xyz/lede/kenzok8-packages/mosdns /home/xyz/lede/package/mosdns
cp -rf /home/xyz/lede/kenzok8-packages/luci-app-mosdns /home/xyz/lede/package/luci-app-mosdns
cp -rf /home/xyz/lede/kenzok8-packages/luci-theme-edge /home/xyz/lede/package/luci-theme-edge
cp -rf /home/xyz/lede/kenzok8-packages/luci-lib-taskd /home/xyz/lede/package/luci-lib-taskd
cp -rf /home/xyz/lede/kenzok8-packages/taskd /home/xyz/lede/package/taskd
cp -rf /home/xyz/lede/kenzok8-packages/luci-lib-xterm /home/xyz/lede/package/luci-lib-xterm
cp -rf /home/xyz/lede/kenzok8-packages/alist /home/xyz/lede/package/alist
cp -rf /home/xyz/lede/kenzok8-packages/luci-app-alist /home/xyz/lede/package/luci-app-alist
cp -rf /home/xyz/lede/kenzok8-packages/luci-app-advanced /home/xyz/lede/package/luci-app-advanced
cp -rf /home/xyz/lede/kenzok8-packages/ddnsto /home/xyz/lede/package/ddnsto
cp -rf /home/xyz/lede/kenzok8-packages/luci-app-ddnsto /home/xyz/lede/package/luci-app-ddnsto
cp -rf /home/xyz/lede/kenzok8-packages/luci-app-ikoolproxy /home/xyz/lede/package/luci-app-ikoolproxy

cp -rf /home/xyz/lede/luci-theme-darkmatter/luci/themes/luci-theme-darkmatter /home/xyz/lede/package/luci-theme-darkmatter
cp -rf /home/xyz/lede/luci-theme-opentomato/luci/themes/luci-theme-opentomato /home/xyz/lede/package/luci-theme-opentomato
cp -rf /home/xyz/lede/luci-theme-rosy/luci-theme-rosy /home/xyz/lede/package/luci-theme-rosy

cp -rf /home/xyz/lede/istore-ui/app-store-ui /home/xyz/lede/package/app-store-ui
cp -rf /home/xyz/lede/istore/luci/luci-app-store /home/xyz/lede/package/luci-app-store
sed -i 's/luci-lib-ipkg/luci-base/g' /home/xyz/lede/package/luci-app-store/Makefile

cp -rf /home/xyz/lede/luci-app-amlogic/luci-app-amlogic /home/xyz/lede/package/luci-app-amlogic

#修改晶晨宝盒默认配置
# 1.Set the download repository of the OpenWrt files to your github.com
sed -i "s|https.*/OpenWrt|https://github.com/HoldOnBro/Actions-OpenWrt|g" /home/xyz/lede/package/luci-app-amlogic/root/etc/config/amlogic
# 2.Set the keywords of Tags in your github.com Releases
#sed -i "s|ARMv8|ARMv8|g" /home/xyz/lede/package/luci-app-amlogic/root/etc/config/amlogic
# 3.Set the suffix of the OPENWRT files in your github.com Releases
sed -i "s|.img.gz|_FOL+SFE.img.gz|g" /home/xyz/lede/package/luci-app-amlogic/root/etc/config/amlogic
# 4.Set the download path of the kernel in your github.com repository
sed -i "s|opt/kernel|BuildARMv8|g" /home/xyz/lede/package/luci-app-amlogic/root/etc/config/amlogic

#修改makefile
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/luci\.mk/include \$(TOPDIR)\/feeds\/luci\/luci\.mk/g' {}
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/lang\/golang\/golang\-package\.mk/include \$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang\-package\.mk/g' {}
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHREPO/PKG_SOURCE_URL:=https:\/\/github\.com/g' {}
find /home/xyz/lede/package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload\.github\.com/g' {}

#readd cpufreq for aarch64
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(aarch64\|\|arm\)/g' feeds/luci/applications/luci-app-cpufreq/Makefile

#replace coremark.sh with the new one
cp -f /home/xyz/Actions-OpenWrt/general/coremark.sh /home/xyz/lede/feeds/packages/utils/coremark/

find /home/xyz/lede/package/*/ /home/xyz/lede/feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-alt/shadowsocksr-libev-ssr-redir/g' {}
find /home/xyz/lede/package/*/ /home/xyz/lede/feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-server/shadowsocksr-libev-ssr-server/g' {}

/home/xyz/lede/scripts/feeds update -a
/home/xyz/lede/scripts/feeds install -a -f

cd /home/xyz/lede/

make menuconfig
