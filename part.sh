svn co https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
svn co https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx
sed -i 'N;24a\tools-y += ucl upx' tools/Makefile
sed -i 'N;40a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
git clone https://github.com/yaof2/luci-app-ikoolproxy package/new/luci-app-ikoolproxy
git clone https://github.com/kiddin9/luci-app-dnsfilter package/new/luci-app-dnsfilter
git clone https://github.com/sbwml/luci-app-mosdns package/new/luci-app-mosdns
git clone https://github.com/kiddin9/openwrt-bypass package/new/luci-app-bypass
git clone https://github.com/siwind/luci-app-wolplus package/new/luci-app-wolplus
git clone https://github.com/imy7/luci-theme package/new/theme