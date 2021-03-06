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

# Add luci-app-ssr-plus
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
popd

# Clone community packages to package/community
mkdir package/community
pushd package/community

# Add Lienol's Packages
#git clone --depth=1 https://github.com/Lienol/openwrt-package

# Use Lienol's https-dns-proxy package
#pushd feeds/packages/net
#rm -rf https-dns-proxy
#svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy
#popd

# Add Passwall
git clone --depth=1 -b main https://github.com/xiaorouji/openwrt-passwall

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
rm -rf ../lean/luci-theme-argon

# Add cpufreq
#git clone --depth=1 https://github.com/coolsnowwolf/lede/tree/master/package/lean/luci-app-cpufreq
#git clone --depth=1 -b openwrt-18.06-k5.4 https://github.com/immortalwrt/immortalwrt/tree/openwrt-18.06-k5.4/package/lean/luci-app-cpufreq

# Add VSSR(Hello World)
git clone https://github.com/jerrykuku/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr

# Add Luci App For Trojan-Go
git clone --depth=1 -b master https://github.com/frainzy1477/luci-app-trojan
