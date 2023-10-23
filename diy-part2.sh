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
rm -rf feeds/luci/applications/luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-wrtbwmon
rm -rf feeds/packages/net/smartdns
rm -rf feeds/packages/net/mosdns

#添加额外软件包
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

#replace mirrors
#rm -rf ./include
#rm -rf ./ scripts
#svn co https://github.com/immortalwrt/immortalwrt/trunk/include
#svn co https://github.com/immortalwrt/immortalwrt/trunk/scripts

git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone --depth=1 https://github.com/jerrykuku/luci-app-ttnode.git package/luci-app-ttnode
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman.git
cp -rf luci-app-dockerman/applications/luci-app-dockerman package/luci-app-dockerman
#rm -rf luci-app-dockerman

git clone --depth=1 https://github.com/rufengsuixing/luci-app-autoipsetadder.git package/luci-app-autoipsetadder
git clone --depth=1 https://github.com/mchome/openwrt-dogcom.git package/openwrt-dogcom
git clone --depth=1 https://github.com/mchome/luci-app-dogcom.git package/luci-app-dogcom
git clone --depth=1 https://github.com/vernesong/OpenClash.git
cp -rf OpenClash/luci-app-openclash package/luci-app-openclash
# 编译 po2lmo (如果有po2lmo可跳过)
pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
#rm -rf OpenClash

# 克隆immortalwrt-packages仓库
git clone --depth=1 -b openwrt-18.06 https://github.com/immortalwrt/packages.git immortalwrt-packages
cp -rf immortalwrt-packages/net/brook package/brook
cp -rf immortalwrt-packages/net/gost package/gost
cp -rf immortalwrt-packages/libs/quickjspp package/quickjspp
cp -rf immortalwrt-packages/libs/jpcre2 package/jpcre2
cp -rf immortalwrt-packages/libs/libcron package/libcron
cp -rf immortalwrt-packages/libs/rapidjson package/rapidjson
cp -rf immortalwrt-packages/net/subconverter package/subconverter
cp -rf immortalwrt-packages/libs/toml11 package/toml11
cp -rf immortalwrt-packages/net/udp2raw package/udp2raw
#rm -rf immortalwrt-packages

# 克隆immortalwrt-luci仓库
git clone --depth=1 -b openwrt-18.06 https://github.com/immortalwrt/luci.git immortalwrt-luci
cp -rf immortalwrt-luci/applications/luci-app-socat package/luci-app-socat
cp -rf immortalwrt-luci/applications/luci-app-gost package/luci-app-gost
cp -rf immortalwrt-luci/applications/luci-app-smartdns package/luci-app-smartdns
cp -rf immortalwrt-luci/applications/luci-app-udp2raw package/luci-app-udp2raw
#rm -rf immortalwrt-luci

# 克隆openwrt-passwall仓库
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git
cp -rf openwrt-passwall-packages/chinadns-ng package/chinadns-ng
cp -rf openwrt-passwall-packages/tcping package/tcping
cp -rf openwrt-passwall-packages/trojan-go package/trojan-go
cp -rf openwrt-passwall-packages/trojan-plus package/trojan-plus
cp -rf openwrt-passwall-packages/ssocks package/ssocks
cp -rf openwrt-passwall-packages/hysteria package/hysteria
cp -rf openwrt-passwall-packages/dns2tcp package/dns2tcp
cp -rf openwrt-passwall-packages/sing-box package/sing-box
#rm -rf openwrt-passwall-packages

# 克隆openwrt-passwall2仓库
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git
cp -rf openwrt-passwall2/luci-app-passwall2 package/luci-app-passwall2
#rm -rf openwrt-passwall2

# 克隆 helloworld 仓库
git clone --depth=1 https://github.com/fw876/helloworld.git
# 从克隆的仓库中复制需要的目录
cp -rf helloworld/naiveproxy package/naiveproxy
cp -rf helloworld/lua-neturl package/lua-neturl
cp -rf helloworld/gn package/gn
cp -rf helloworld/xray-core package/xray-core
cp -rf helloworld/xray-plugin package/xray-plugin
cp -rf helloworld/shadow-tls package/shadow-tls
cp -rf helloworld/shadowsocks-rust package/shadowsocks-rust
cp -rf helloworld/shadowsocksr-libev package/shadowsocksr-libev
cp -rf helloworld/v2ray-plugin package/v2ray-plugin
cp -rf helloworld/simple-obfs package/simple-obfs
cp -rf helloworld/trojan package/trojan
cp -rf helloworld/v2ray-core package/v2ray-core
cp -rf helloworld/v2ray-geodata package/v2ray-geodata
cp -rf helloworld/sagernet-core package/sagernet-core
cp -rf helloworld/microsocks package/microsocks
cp -rf helloworld/redsocks2 package/redsocks2
cp -rf helloworld/ipt2socks package/ipt2socks
cp -rf helloworld/dns2socks package/dns2socks
cp -rf helloworld/tuic-client package/tuic-client
cp -rf helloworld/luci-app-ssr-plus package/luci-app-ssr-plus
#rm -rf helloworld

# 克隆 kenzok8-packages 仓库
git clone --depth=1 https://github.com/kenzok8/openwrt-packages.git kenzok8-packages
cp -rf kenzok8-packages/smartdns package/smartdns
cp -rf kenzok8-packages/luci-app-passwall package/luci-app-passwall
cp -rf kenzok8-packages/luci-app-eqos package/luci-app-eqos
cp -rf kenzok8-packages/mosdns package/mosdns
cp -rf kenzok8-packages/luci-app-mosdns package/luci-app-mosdns
cp -rf kenzok8-packages/luci-theme-edge package/luci-theme-edge
cp -rf kenzok8-packages/luci-lib-taskd package/luci-lib-taskd
cp -rf kenzok8-packages/taskd package/taskd
cp -rf kenzok8-packages/luci-lib-xterm package/luci-lib-xterm
cp -rf kenzok8-packages/alist package/alist
cp -rf kenzok8-packages/luci-app-alist package/luci-app-alist
cp -rf kenzok8-packages/luci-app-advanced package/luci-app-advanced
cp -rf kenzok8-packages/ddnsto package/ddnsto
cp -rf kenzok8-packages/luci-app-ddnsto package/luci-app-ddnsto
cp -rf kenzok8-packages/luci-app-ikoolproxy package/luci-app-ikoolproxy
#rm -rf kenzok8-packages

git clone --depth=1 https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan

# themes
git clone --depth=1 https://github.com/Leo-Jo-My/luci-theme-Butterfly package/luci-theme-Butterfly
git clone --depth=1 https://github.com/Leo-Jo-My/luci-theme-Butterfly-dark package/luci-theme-Butterfly-dark
git clone --depth=1 https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
git clone --depth=1 https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone --depth=1 https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone --depth=1 https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd

# 克隆 luci-theme-darkmatter 仓库
git clone --depth=1 https://github.com/apollo-ng/luci-theme-darkmatter.git
cp -rf luci-theme-darkmatter/luci/themes/luci-theme-darkmatter package/luci-theme-darkmatter

# 克隆 luci-theme-opentomato 仓库
git clone --depth=1 https://github.com/solidus1983/luci-theme-opentomato.git
cp -rf luci-theme-opentomato/luci/themes/luci-theme-opentomato package/luci-theme-opentomato

# 克隆 luci-theme-rosy 仓库
git clone --depth=1 https://github.com/rosywrt/luci-theme-rosy.git
cp -rf luci-theme-rosy/luci-theme-rosy package/luci-theme-rosy

#添加istore
git clone --depth=1 https://github.com/linkease/istore-ui.git
cp -rf istore-ui/app-store-ui package/app-store-ui
git clone --depth=1 https://github.com/linkease/istore.git
cp -rf istore/luci/luci-app-store package/luci-app-store
sed -i 's/luci-lib-ipkg/luci-base/g' package/luci-app-store/Makefile
#rm -rf istore-ui istore

#添加luci-app-amlogic
git clone --depth=1 https://github.com/ophub/luci-app-amlogic.git
cp -rf luci-app-amlogic/luci-app-amlogic package/luci-app-amlogic
#rm -rf luci-app-amlogic

#修改晶晨宝盒默认配置
# 1.Set the download repository of the OpenWrt files to your github.com
sed -i "s|https.*/OpenWrt|https://github.com/HoldOnBro/Actions-OpenWrt|g" package/luci-app-amlogic/root/etc/config/amlogic
# 2.Set the keywords of Tags in your github.com Releases
#sed -i "s|ARMv8|ARMv8|g" package/luci-app-amlogic/root/etc/config/amlogic
# 3.Set the suffix of the OPENWRT files in your github.com Releases
sed -i "s|.img.gz|_FOL+SFE.img.gz|g" package/luci-app-amlogic/root/etc/config/amlogic
# 4.Set the download path of the kernel in your github.com repository
sed -i "s|opt/kernel|BuildARMv8|g" package/luci-app-amlogic/root/etc/config/amlogic

#添加argon-config 使用 最新argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

#修改makefile
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/luci\.mk/include \$(TOPDIR)\/feeds\/luci\/luci\.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/lang\/golang\/golang\-package\.mk/include \$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang\-package\.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHREPO/PKG_SOURCE_URL:=https:\/\/github\.com/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload\.github\.com/g' {}

#readd cpufreq for aarch64
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(aarch64\|\|arm\)/g' feeds/luci/applications/luci-app-cpufreq/Makefile

#replace coremark.sh with the new one
cp -f $GITHUB_WORKSPACE/general/coremark.sh feeds/packages/utils/coremark/

find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-alt/shadowsocksr-libev-ssr-redir/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-server/shadowsocksr-libev-ssr-server/g' {}

./scripts/feeds update -a
./scripts/feeds install -a -f
