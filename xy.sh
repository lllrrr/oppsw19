#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/+IPV6:luci-proto-ipv6 //g' feeds/luci/collections/luci/Makefile
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i 's/luci-theme-bootstrap/luci-theme-argon-light-mod/g' feeds/luci/collections/luci/Makefile
sed -i 's/IMG_PREFIX:=$(VERSION_DIST_SANITIZED)/IMG_PREFIX:=R9-Sale-$(shell date +%F-%H)-$(VERSION_DIST_SANITIZED)/g' include/image.mk

git clone https://github.com/lllrrr/default-settings package/lean/default-settings
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_aliyun package/lean/ddns-scripts_aliyun
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_dnspod package/lean/ddns-scripts_dnspod
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings package/lean/default-settings
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-arpbind package/lean/luci-app-arpbind
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/adbyby package/lean/adbyby
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/frp package/lean/frp
sed -i 's/0.32.1/0.33.0/g' package/lean/frp/Makefile
sed -i 's/3a6ef59163f5a1d41b67908269e924000a8ccb2984e4bdfc18bd1405b5dbaf22/9c773ab4bbd208705c795599c5e69302a379734921c90489ed8ae331c24836cb/g' package/lean/frp/Makefile
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frpc package/lean/luci-app-frpc
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frps package/lean/luci-app-frps
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-mwan3helper package/lean/luci-app-mwan3helper
git clone https://github.com/fw876/helloworld package/lean/helloworld
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/srelay package/lean/srelay
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping package/lean/tcpping
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/npc package/lean/npc
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-nps package/lean/luci-app-nps
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-wrtbwmon package/lean/luci-app-wrtbwmon
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/lean/luci-app-zerotier
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-lib-fs package/lean/luci-lib-fs
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package/lean/microsocks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package/lean/redsocks2
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
git clone https://github.com/Lienol/openwrt-package package/openwrt-package
#git clone https://github.com/lllrrr/mypsw38 package/mypsw38
svn co https://github.com/lllrrr/mypsw/trunk/theme package/lean/theme
svn co https://github.com/lllrrr/myttyd/trunk/luci-app-terminal package/lean/luci-app-terminal
git clone https://github.com/vernesong/OpenClash package/lean/OpenClash
git clone https://github.com/destan19/OpenAppFilter package/lean/OpenAppFilter
git clone https://github.com/tty228/luci-app-serverchan package/lean/luci-app-serverchan
svn co https://github.com/Lienol/openwrt/trunk/lang/golang feeds/packages/lang/golang
rm -rf feeds/packages/lang/golang/
rm -rf feeds/packages/libs/libcap/
svn co https://github.com/openwrt/packages/trunk/libs/libcap feeds/packages/libs/libcap
svn co https://github.com/Lienol/openwrt-packages/trunk/lang/golang feeds/packages/lang/golang
rm -rf feeds/packages/utils/ttyd/
svn co https://github.com/openwrt/packages/trunk/utils/ttyd feeds/packages/utils/ttyd
svn co https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
svn co https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx
cp ../Makefile tools/
git clone https://github.com/jerrykuku/luci-app-vssr package/lean/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb package/lean/lua-maxminddb
git clone https://github.com/lllrrr/frpmod package/lean/frpmod
rm -rf feeds/packages/net/kcptun/
git clone https://github.com/lllrrr/mysmartdns package/mysmartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/lean/openwrt-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns package/lean/luci-app-smartdns
cp ../target.mk include/
cp -r ../feeds/packages/ feeds/
cp ../zzz-default-settingsxy package/lean/default-settings/files/zzz-default-settings
sed -i "s/8.3.19.0410/X9.$(date "+%y.%m%d.%H")/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/8.3.19.0410/X9.$(date "+%y.%m%d.%H")/g" files/etc/banner
