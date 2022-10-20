#!/bin/bash
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf
sed -i "s|^root|root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::|g" package/base-files/files/etc/shadow
