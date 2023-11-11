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
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

rm -rf target/linux/ipq40xx/patches-5.10/999-ipq40xx-unlock-cpu-frequency.patch
wget https://gist.github.com/kkstone/d531dab3fd8b37ba692902ce2c06cde3/raw/da951a1d138d8ed24aa0c21e28f2b8c7bfd4ace7/993-ipq40xx-unlock-cpu-frequency.patch -O target/linux/ipq40xx/patches-5.10/999-ipq40xx-unlock-cpu-frequency.patch

# Add a feed source
cd package
git clone https://github.com/kenzok8/small.git
git clone https://github.com/kenzok78/luci-app-adguardhome.git
git clone https://github.com/animegasan/luci-app-wolplus.git

