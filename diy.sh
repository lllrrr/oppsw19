#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#sed -i 's/default "5"/default "0"/g' config/Config-images.in
#sed -i 's/default y if TARGET_pistachio/default y/g' config/Config-kernel.in
sed -i 's/+IPV6:luci-proto-ipv6 //g' feeds/luci/collections/luci/Makefile
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#sed -i 's/1024) + " <%:k/1048576) + " <%:M/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#sed -i 's/(info.memory/Math.floor(info.memory/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#sed -i 's/(Math.floor/Math.floor(/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#sed -i 's/(info.swap/Math.floor(info.swap/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#sed -i 's/luci-theme-bootstrap/luci-theme-argon-dark-mod/g' feeds/luci/collections/luci/Makefile
#sed -i 's/+kmod-nls-base @BUILD_PATENTED/+kmod-nls-base/g' feeds/packages/kernel/exfat-nofuse/Makefile
sed -i 's/IMG_PREFIX:=$(VERSION_DIST_SANITIZED)/IMG_PREFIX:=R9.1-$(shell date +%F-%H)-$(VERSION_DIST_SANITIZED)/g' include/image.mk

svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_aliyun package/lean/ddns-scripts_aliyun
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_dnspod package/lean/ddns-scripts_dnspod
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings package/lean/default-settings
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-arpbind package/lean/luci-app-arpbind
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/adbyby package/lean/adbyby
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-flowoffload package/lean/luci-app-flowoffload
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/frpc package/lean/frpc
sed -i 's/0.31.1/0.31.2/g' package/lean/frpc/Makefile
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frpc package/lean/luci-app-frpc
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-mwan3helper package/lean/luci-app-mwan3helper
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ssr-plus package/lean/luci-app-ssr-plus
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/srelay package/lean/srelay
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt/ package/lean/
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray/ package/lean/
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-syncdial package/lean/luci-app-syncdial
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-usb-printer package/lean/luci-app-usb-printer
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/vlmcsd package/lean/vlmcsd
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vlmcsd package/lean/luci-app-vlmcsd
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/vsftpd-alt package/lean/vsftpd-alt
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vsftpd package/lean/luci-app-vsftpd
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/openwrt-fullconenat package/lean/openwrt-fullconenat
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/npc package/lean/npc
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-nps package/lean/luci-app-nps
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/softethervpn5 package/lean/softethervpn5
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-wrtbwmon package/lean/luci-app-wrtbwmon
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ttyd package/lean/luci-app-ttyd
#svn checkout https://github.com/coolsnowwolf/packages/trunk/utils/ttyd package/lean/ttyd
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-webadmin package/lean/luci-app-webadmin
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/qt5 package/lean/qt5
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/qBittorrent package/lean/qBittorrent
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/rblibtorrent package/lean/rblibtorrent
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-qbittorrent package/lean/luci-app-qbittorrent
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/baidupcs-web package/lean/baidupcs-web
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-baidupcs-web package/lean/luci-app-baidupcs-web
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/lean/luci-app-zerotier
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-lib-fs package/lean/luci-lib-fs
svn checkout https://github.com/Lienol/openwrt-package/trunk/lienol package/lienol/lienol
svn checkout https://github.com/Lienol/openwrt-package/trunk/others package/lienol/others
svn checkout https://github.com/Lienol/openwrt-package/trunk/package package/lienol/package
#svn checkout https://github.com/tsl0922/ttyd/trunk/openwrt/ttyd package/lean/ttyd
#svn checkout https://github.com/tsl0922/ttyd/trunk/openwrt/luci-app-terminal package/lean/luci-app-terminal
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-app-terminal/Makefile
svn checkout https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy package/lean/luci-theme-rosy
#svn checkout https://github.com/jerrykuku/luci-theme-argon/trunk package/lean/luci-theme-argon
#svn checkout https://github.com/john-shine/luci-theme-darkmatter/trunk/luci/themes/luci-theme-darkmatter package/lean/luci-theme-darkmatter
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-theme-darkmatter/Makefile
#svn checkout https://github.com/kuyokushin/luci-theme-darkpro/trunk/luci/themes/luci-theme-darkpro package/lean/luci-theme-darkpro
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-theme-darkpro/Makefile
#svn checkout https://github.com/solidus1983/luci-theme-opentomato/trunk/luci/themes/luci-theme-opentomato package/lean/luci-theme-opentomato
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-theme-opentomato/Makefile
#svn checkout https://github.com/kuoruan/openwrt-v2ray/trunk package/lean/openwrt-v2ray
#svn checkout https://github.com/kuoruan/luci-app-v2ray/trunk package/lean/luci-app-v2ray
#svn checkout https://github.com/kuoruan/openwrt-frp/trunk package/lean/openwrt-frp
#svn checkout https://github.com/kuoruan/luci-app-frpc/trunk package/lean/luci-app-frpc
#svn checkout https://github.com/kuoruan/openwrt-kcptun/trunk package/lean/openwrt-kcptun
#svn checkout https://github.com/kuoruan/luci-app-kcptun/trunk package/lean/luci-app-kcptun
#svn checkout https://github.com/maxlicheng/luci-app-unblockmusic/trunk package/lean/luci-app-unblockmusic
svn checkout https://github.com/project-openwrt/luci-app-unblockneteasemusic/trunk package/lean/luci-app-unblockneteasemusic
sed -i 's/解除网易云音乐播放限制/解锁网易云/g' package/lean/luci-app-unblockneteasemusic/luasrc/controller/unblockneteasemusic.lua
#svn checkout https://github.com/project-openwrt/luci-app-unblockneteasemusic-go/trunk package/lean/luci-app-unblockneteasemusic-go
#sed -i 's/解除网易云音乐播放限制/解锁网易云/g' package/lean/luci-app-unblockneteasemusic-go/luci-app-unblockneteasemusic-go/luasrc/controller/unblockneteasemusic-go.lua
svn checkout https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini/trunk package/lean/luci-app-unblockneteasemusic-mini
sed -i 's/解除网易云音乐播放限制/解锁网易云/g' package/lean/luci-app-unblockneteasemusic-mini/luasrc/controller/unblockneteasemusic-mini.lua
#svn checkout https://github.com/frainzy1477/clash/trunk package/lean/clash
#svn checkout https://github.com/frainzy1477/luci-app-clash/trunk package/lean/luci-app-clash
svn checkout https://github.com/vernesong/OpenClash/trunk package/lean/OpenClash
svn checkout https://github.com/destan19/OpenAppFilter/trunk package/lean/OpenAppFilter
#svn checkout https://github.com/project-openwrt/BaiduPCS-Web/trunk package/lean/BaiduPCS-Web
#sed -i 's/3.6.8/3.7.0/g' package/lean/BaiduPCS-Web/BaiduPCS-Web/Makefile
svn checkout https://github.com/tty228/luci-app-serverchan/trunk package/lean/luci-app-serverchan
svn checkout https://github.com/happyzhang1995/openwrt-adguardhome/trunk package/lean/openwrt-adguardhome
svn checkout https://github.com/happyzhang1995/luci-app-adguardhome/trunk package/lean/luci-app-adguardhome
svn checkout https://github.com/stamilo/luci-app-fullconenat/trunk package/lean/luci-app-fullconenat
sed -i 's/NAT类型-Full cone NAT/NAT类型/g' package/lean/luci-app-fullconenat/po/zh-cn/fullconenat.po
svn checkout https://github.com/LGA1150/openwrt-fullconenat/trunk package/lean/openwrt-fullconenat
svn checkout https://github.com/Leo-Jo-My/luci-app-ssr-plus-jo/trunk package/lean/luci-app-ssr-plus-jo
svn checkout https://github.com/Leo-Jo-My/luci-app-vssr-coexist/trunk package/lean/luci-app-vssr-coexist
#svn checkout https://github.com/Leo-Jo-My/luci-app-vssr/trunk package/lean/luci-app-vssr
#svn checkout https://github.com/Leo-Jo-My/my/trunk package/lean/my
svn checkout https://github.com/pymumu/smartdns/trunk package/lean/smartdns
svn checkout https://github.com/pymumu/luci-app-smartdns/trunk package/lean/luci-app-smartdns
svn checkout https://github.com/lisaac/luci-app-diskman/trunk package/lean/luci-app-diskman
mkdir package/lean/parted
mv package/lean/luci-app-diskman/Parted.Makefile package/lean/parted/Makefile
sed -i 's/DiskMan //g' package/lean/luci-app-diskman/po/zh-cn/diskman.po
svn checkout https://github.com/rufengsuixing/luci-app-syncdial/trunk package/lean/luci-app-syncdial
#rm -rf feeds/packages/libs/libuv/
#rm -rf package/libs/openssl/
#svn checkout https://github.com/openwrt/packages/trunk/libs/libuv feeds/packages/libs/libuv/
#svn checkout https://github.com/openwrt/openwrt/trunk/package/libs/openssl package/libs/openssl/
#rm -rf feeds/luci/applications/luci-app-aria2/
#svn checkout https://github.com/kuoruan/openwrt-feeds/trunk/luci-app-aria2 feeds/luci/applications/luci-app-aria2
#sed -i 's/services/nas/g' feeds/luci/applications/luci-app-aria2/luasrc/controller/aria2.lua
#sed -i 's/services/nas/g' feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/log_template.htm
#sed -i 's/services/nas/g' feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/settings_header.htm
#rm -rf feeds/packages/net/ariang/
#svn checkout https://github.com/openwrt/packages/trunk/net/ariang feeds/packages/net/ariang
svn checkout https://github.com/jerrykuku/luci-app-vssr/trunk package/lean/luci-app-vssr
svn checkout https://github.com/jerrykuku/lua-maxminddb/trunk package/lean/lua-maxminddb
#svn checkout https://github.com/openwrt/packages/trunk/libs/libmaxminddb feeds/packages/libs/libmaxminddb
#svn checkout https://github.com/openwrt/packages/trunk/utils/zstd package/lean/zstd
svn checkout https://github.com/lllrrr/frpmod/trunk package/lean/frpmod
rm -rf feeds/packages/net/kcptun/
cp ../target.mk include/
cp ../luci.mk feeds/luci/
cp ../zzz-default-settings package/lean/default-settings/files/
sed -i "s/8.3.19.0410/9.1.$(date "+%y.%m%d.%H")/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/8.3.19.0410/9.1.$(date "+%y.%m%d.%H")/g" files/etc/banner
