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

echo '添加helloworld/vssr软件源'
rm -rf package/lean/helloworld
rm -rf package/helloworld
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"

echo 'Add a feed source添加软件源'
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default #原始记录
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default #原始记录
echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default #添加kenzok8/small-package
#echo 'src-git liuran001 https://github.com/liuran001/openwrt-packages' >>feeds.conf.default #添加liuran001/openwrt-packages
#echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default #添加kiddin9/openwrt-packages

#1.'asus_dhd24' 2.'ac88u_20' 3.'69027'
#firmware='ac88u_20'
#echo '替换无线驱动'
#wget -nv https://github.com/yangxu52/Phicomm-k3-Wireless-Firmware/raw/master/brcmfmac4366c-pcie.bin.${firmware} -O package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
#echo '=========Replace k3 wireless firmware OK!========='
