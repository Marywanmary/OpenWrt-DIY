#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


echo 'Add a feed source添加软件源'
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default #原始记录
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default #原始记录
echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default #添加kenzok8/small-package
#echo 'src-git liuran001 https://github.com/liuran001/openwrt-packages' >>feeds.conf.default #添加liuran001/openwrt-packages
#echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default #添加kiddin9/openwrt-packages
