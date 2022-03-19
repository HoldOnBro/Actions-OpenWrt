#!/bin/bash
sed -i 's/10.10.10.1/192.168.31.1/g' package/base-files/files/bin/config_generate
sed -i "s|^root|root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::|g" package/base-files/files/etc/shadow
