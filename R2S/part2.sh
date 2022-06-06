#!/bin/bash

# replace default theme to argon
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/imy7/g' package/base-files/files/bin/config_generate
sed -i 's/ssid=OpenWrt/ssid=imy7/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/option enabled '0'/option enabled '1'/g' feeds/packages/multimedia/minidlna/files/minidlna.config
sed -i 's/option enabled		0/option enabled		1/g' feeds/packages/net/miniupnpd/files/upnpd.config
