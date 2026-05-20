include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-5g-cpe-view
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=XIAOZHAOXSXH
PKG_LICENSE:=MIT
PKG_ARCH:=all

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-5g-cpe-view
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=5G CPE View - Huawei 5G Modem Web Panel
  PKGARCH:=all
  DEPENDS:=+luci-base +luci-compat
endef

define Package/luci-app-5g-cpe-view/description
  Embed Huawei 5G communication shell web backend in OpenWrt LuCI.
  Configurable IP address and port with iframe display.
  Powered by 闲鱼：小赵先生.
endef

define Build/Compile
endef

define Package/luci-app-5g-cpe-view/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/5g_cpe_view
	$(INSTALL_DIR) $(1)/etc/config

	$(INSTALL_DATA) ./luasrc/controller/5g_cpe_view.lua $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DATA) ./luasrc/view/5g_cpe_view/main.htm $(1)/usr/lib/lua/luci/view/5g_cpe_view/
	$(INSTALL_CONF) ./root/etc/config/5g_cpe_view $(1)/etc/config/
endef

$(eval $(call BuildPackage,luci-app-5g-cpe-view))
