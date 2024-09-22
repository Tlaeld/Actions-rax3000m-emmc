#!/bin/bash

#更改默认地址为192.168.6.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i "/helloworld/d" "feeds.conf.default"
sed -i '1i src-git-full passwall https://github.com/xiaorouji/openwrt-passwall.git' "feeds.conf.default"
sed -i '1i src-git-full helloworld https://github.com/xiaorouji/openwrt-passwall-packages.git' "feeds.conf.default"
