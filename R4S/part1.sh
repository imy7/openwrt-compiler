#!/bin/bash

svn co https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
svn co https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx
sed -i 'N;24a\tools-y += ucl upx' tools/Makefile
sed -i 'N;40a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
echo 'src-git mosdns  https://github.com/sbwml/luci-app-mosdns' >>feeds.conf.default
echo 'src-git bypass https://github.com/kiddin9/openwrt-bypass' >>feeds.conf.default
echo 'scr-git filter https://github.com/kiddin9/luci-app-dnsfilter' >>feeds.conf.default
