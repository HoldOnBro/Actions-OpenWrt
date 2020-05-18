#!/bin/bash
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git luci-app-smartdns

./scripts/feeds update -a
./scripts/feeds install -a
