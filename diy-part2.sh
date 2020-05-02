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
#sed -i 's/1024) + " <%:k/1048576) + " <%:M/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#sed -i 's/(info.memory/Math.floor(info.memory/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#sed -i 's/(Math.floor/Math.floor(/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#sed -i 's/(info.swap/Math.floor(info.swap/g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
sed -i 's/luci-theme-bootstrap/luci-theme-argon-dark-mod/g' feeds/luci/collections/luci/Makefile
#sed -i 's/+kmod-nls-base @BUILD_PATENTED/+kmod-nls-base/g' feeds/packages/kernel/exfat-nofuse/Makefile
sed -i 's/IMG_PREFIX:=$(VERSION_DIST_SANITIZED)/IMG_PREFIX:=R9-$(shell date +%F-%H)-$(VERSION_DIST_SANITIZED)/g' include/image.mk

svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_aliyun package/lean/ddns-scripts_aliyun
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_dnspod package/lean/ddns-scripts_dnspod
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings package/lean/default-settings
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-arpbind package/lean/luci-app-arpbind
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/adbyby package/lean/adbyby
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-flowoffload package/lean/luci-app-flowoffload
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/frp package/lean/frp
sed -i 's/0.32.1/0.33.0/g' package/lean/frp/Makefile
sed -i 's/3a6ef59163f5a1d41b67908269e924000a8ccb2984e4bdfc18bd1405b5dbaf22/9c773ab4bbd208705c795599c5e69302a379734921c90489ed8ae331c24836cb/g' package/lean/frp/Makefile
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frpc package/lean/luci-app-frpc
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frps package/lean/luci-app-frps
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-mwan3helper package/lean/luci-app-mwan3helper
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ssr-plus package/lean/luci-app-ssr-plus
git clone https://github.com/fw876/helloworld package/lean/helloworld
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/srelay package/lean/srelay
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping package/lean/tcpping
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt/ package/lean/
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray/ package/lean/
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-syncdial package/lean/luci-app-syncdial
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-usb-printer package/lean/luci-app-usb-printer
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/vlmcsd package/lean/vlmcsd
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vlmcsd package/lean/luci-app-vlmcsd
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/vsftpd-alt package/lean/vsftpd-alt
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vsftpd package/lean/luci-app-vsftpd
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/openwrt-fullconenat package/lean/openwrt-fullconenat
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/npc package/lean/npc
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-nps package/lean/luci-app-nps
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/softethervpn5 package/lean/softethervpn5
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-wrtbwmon package/lean/luci-app-wrtbwmon
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/qt5 package/lean/qt5
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/qBittorrent package/lean/qBittorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rblibtorrent package/lean/rblibtorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-qbittorrent package/lean/luci-app-qbittorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/baidupcs-web package/lean/baidupcs-web
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-baidupcs-web package/lean/luci-app-baidupcs-web
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/lean/luci-app-zerotier
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-lib-fs package/lean/luci-lib-fs
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package/lean/microsocks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package/lean/redsocks2
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-unblockmusic package/lean/luci-app-unblockmusic
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/UnblockNeteaseMusic package/lean/UnblockNeteaseMusic
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/UnblockNeteaseMusicGo package/lean/UnblockNeteaseMusicGo
sed -i 's/解锁网易云灰色歌曲/解锁网易云/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
git clone https://github.com/lienol/openwrt-package package/lienol
git clone https://github.com/lllrrr/mypsw package/mypsw
svn co https://github.com/lllrrr/myttyd/trunk/luci-app-terminal package/lean/luci-app-terminal
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-app-terminal/Makefile
#svn co https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy package/lean/luci-theme-rosy
#svn co https://github.com/jerrykuku/luci-theme-argon/trunk package/lean/luci-theme-argon
#svn co https://github.com/john-shine/luci-theme-darkmatter/trunk/luci/themes/luci-theme-darkmatter package/lean/luci-theme-darkmatter
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-theme-darkmatter/Makefile
#svn co https://github.com/kuyokushin/luci-theme-darkpro/trunk/luci/themes/luci-theme-darkpro package/lean/luci-theme-darkpro
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-theme-darkpro/Makefile
#svn co https://github.com/solidus1983/luci-theme-opentomato/trunk/luci/themes/luci-theme-opentomato package/lean/luci-theme-opentomato
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-theme-opentomato/Makefile
#svn co https://github.com/kuoruan/openwrt-v2ray/trunk package/lean/openwrt-v2ray
#svn co https://github.com/kuoruan/luci-app-v2ray/trunk package/lean/luci-app-v2ray
#svn co https://github.com/kuoruan/openwrt-frp/trunk package/lean/openwrt-frp
#svn co https://github.com/kuoruan/luci-app-frpc/trunk package/lean/luci-app-frpc
#svn co https://github.com/kuoruan/openwrt-kcptun/trunk package/lean/openwrt-kcptun
#svn co https://github.com/kuoruan/luci-app-kcptun/trunk package/lean/luci-app-kcptun
#svn co https://github.com/maxlicheng/luci-app-unblockmusic/trunk package/lean/luci-app-unblockmusic
#svn co https://github.com/project-openwrt/luci-app-unblockneteasemusic/trunk package/lean/luci-app-unblockneteasemusic
#sed -i 's/解除网易云音乐播放限制/解锁网易云/g' package/lean/luci-app-unblockneteasemusic/luasrc/controller/unblockneteasemusic.lua
#svn co https://github.com/project-openwrt/luci-app-unblockneteasemusic-go/trunk package/lean/luci-app-unblockneteasemusic-go
#sed -i 's/解除网易云音乐播放限制/解锁网易云/g' package/lean/luci-app-unblockneteasemusic-go/luci-app-unblockneteasemusic-go/luasrc/controller/unblockneteasemusic-go.lua
#svn co https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini/trunk package/lean/luci-app-unblockneteasemusic-mini
#sed -i 's/解除网易云音乐播放限制/解锁网易云/g' package/lean/luci-app-unblockneteasemusic-mini/luasrc/controller/unblockneteasemusic-mini.lua
#svn co https://github.com/frainzy1477/clash/trunk package/lean/clash
#svn co https://github.com/frainzy1477/luci-app-clash/trunk package/lean/luci-app-clash
git clone https://github.com/vernesong/OpenClash package/lean/OpenClash
git clone https://github.com/destan19/OpenAppFilter package/lean/OpenAppFilter
#svn co https://github.com/project-openwrt/BaiduPCS-Web/trunk package/lean/BaiduPCS-Web
#sed -i 's/3.6.8/3.7.0/g' package/lean/BaiduPCS-Web/BaiduPCS-Web/Makefile
git clone https://github.com/tty228/luci-app-serverchan package/lean/luci-app-serverchan
#git clone https://github.com/happyzhang1995/openwrt-adguardhome package/lean/openwrt-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/lean/luci-app-adguardhome
git clone https://github.com/stamilo/luci-app-fullconenat package/lean/luci-app-fullconenat
sed -i 's/NAT类型-Full cone NAT/NAT类型/g' package/lean/luci-app-fullconenat/po/zh-cn/fullconenat.po
git clone https://github.com/LGA1150/openwrt-fullconenat package/lean/openwrt-fullconenat
#svn co https://github.com/Leo-Jo-My/luci-app-ssr-plus-jo/trunk package/lean/luci-app-ssr-plus-jo
#svn co https://github.com/Leo-Jo-My/luci-app-vssr-coexist/trunk package/lean/luci-app-vssr-coexist
#svn co https://github.com/Leo-Jo-My/luci-app-vssr/trunk package/lean/luci-app-vssr
#svn co https://github.com/Leo-Jo-My/my/trunk package/lean/my
git clone https://github.com/lisaac/luci-app-diskman package/lean/luci-app-diskman
mkdir package/lean/parted
mv package/lean/luci-app-diskman/Parted.Makefile package/lean/parted/Makefile
sed -i 's/DiskMan 磁盘管理/磁盘管理/g' package/lean/luci-app-diskman/po/zh-cn/diskman.po
git clone https://github.com/rufengsuixing/luci-app-syncdial package/lean/luci-app-syncdial
git clone https://github.com/rufengsuixing/luci-app-autoipsetadder package/lean/luci-app-autoipsetadder
git clone https://github.com/rufengsuixing/luci-app-usb3disable package/lean/luci-app-usb3disable
git clone https://github.com/Mleaf/openwrt-mwol package/lean/openwrt-mwol
#rm -rf feeds/packages/libs/libuv/
#rm -rf package/libs/openssl/
#rm -rf feeds/packages/lang/golang/
#rm -rf feeds/packages/utils/ttyd/
#svn co https://github.com/openwrt/packages/trunk/libs/libuv feeds/packages/libs/libuv/
#svn co https://github.com/openwrt/openwrt/trunk/package/libs/openssl package/libs/openssl/
#svn co https://github.com/openwrt/packages/trunk/lang/golang feeds/packages/lang/golang
#sed -i 's/+golang-src/+golang-src +libpthread/g' feeds/packages/lang/golang/golang/Makefile
#svn co https://github.com/openwrt/packages/trunk/utils/ttyd feeds/packages/utils/ttyd
svn co https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
svn co https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx
cp ../Makefile tools/
#rm -rf feeds/packages/net/aria2/
#svn co https://github.com/openwrt/packages/branches/openwrt-18.06/net/aria2 feeds/packages/net/aria2
#sed -i 's/1.33.0/1.33.1/g' feeds/packages/net/aria2/Makefile
#sed -i 's/996e3fc2fd07ce2dd517e20a1f79b8b3dbaa5c7e27953b5fc19dae38f3874b8c/skip/g' feeds/packages/net/aria2/Makefile
rm -rf feeds/luci/applications/luci-app-aria2/
svn co https://github.com/kuoruan/openwrt-feeds/trunk/luci-app-aria2 feeds/luci/applications/luci-app-aria2
sed -i 's/services/nas/g' feeds/luci/applications/luci-app-aria2/luasrc/controller/aria2.lua
sed -i 's/services/nas/g' feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/log_template.htm
sed -i 's/services/nas/g' feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/settings_header.htm
rm -rf feeds/packages/net/ariang/
svn co https://github.com/openwrt/packages/trunk/net/ariang feeds/packages/net/ariang
git clone https://github.com/jerrykuku/luci-app-vssr package/lean/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb package/lean/lua-maxminddb
#svn co https://github.com/openwrt/packages/trunk/libs/libmaxminddb package/lean/libmaxminddb
#svn co https://github.com/openwrt/packages/trunk/utils/zstd package/lean/zstd
git clone https://github.com/lllrrr/frpmod package/lean/frpmod
rm -rf feeds/packages/net/kcptun/
#rm -rf feeds/packages/utils/ttyd/
git clone https://github.com/pymumu/openwrt-smartdns package/lean/openwrt-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/lean/luci-app-smartdns
#sed -i 's_../../_$(TOPDIR)/feeds/luci/_' package/lean/luci-app-smartdns/Makefile
cp ../target.mk include/
#cp ../luci.mk feeds/luci/
cp ../zzz-default-settings package/lean/default-settings/files/
sed -i "s/8.3.19.0410/9.$(date "+%y.%m%d.%H")/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/8.3.19.0410/9.$(date "+%y.%m%d.%H")/g" files/etc/banner
