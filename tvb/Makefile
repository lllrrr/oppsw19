include $(TOPDIR)/rules.mk

PKG_NAME:=tvb
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=tvb for OpenWRT
	URL:=http://forums.mydigitallife.info/threads/50234
	DEPENDS:=
endef

define Package/$(PKG_NAME)/description
	tvb is a watch hk tvb
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp -pR ./luasrc/* $(1)/usr/lib/lua/luci/
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
chmod a+x $${IPKG_INSTROOT}/usr/lib/lua/luci/controller/$(PKG_NAME).lua >/dev/null 2>&1
exit 0
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
