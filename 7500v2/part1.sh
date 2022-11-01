#!/bin/bash

svn co https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
svn co https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx
sed -i 'N;24a\tools-y += ucl upx' tools/Makefile
sed -i 'N;40a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
git clone https://github.com/yaof2/luci-app-ikoolproxy package/new
git clone https://github.com/sbwml/luci-app-mosdns package/new
git clone https://github.com/kiddin9/openwrt-bypass package/new
git clone https://github.com/siwind/luci-app-wolplus package/new
git clone https://github.com/imy7/luci-theme package/new
