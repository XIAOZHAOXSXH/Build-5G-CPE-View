# 5G CPE View

华为 5G 通讯壳 Web 管理面板 LuCI 插件，适用于 OpenWrt 路由器系统。

## 功能简介

- 在 OpenWrt LuCI 管理界面中嵌入华为 5G 通讯壳的 Web 后台
- 默认访问地址：`192.168.66.1:6677`
- 支持端口切换：`80` / `6677` / `8080` / 自定义端口
- 支持自定义通讯壳 IP 地址
- 设置自动保存，重启后生效
- 兼容所有 OpenWrt 发行版（18.06+、21.02、22.03、23.05 等）

## 截图预览

插件位于 LuCI 管理页面 **服务 → 5G CPE View** 菜单下，打开后即可直接在路由器后台中查看和操作 5G 通讯壳的 Web 界面。

## 安装方法

### 方法一：从 GitHub Release 下载安装

1. 前往 [Releases](https://github.com/XIAOZHAOXSXH/Build-5G-CPE-View/releases) 页面
2. 下载对应路由器架构的 `.ipk` 文件
3. 通过 SSH 上传到路由器并安装：

```bash
# 上传 ipk 文件到路由器
scp luci-app-5g-cpe-view_*.ipk root@192.168.1.1:/tmp/

# SSH 登录路由器
ssh root@192.168.1.1

# 安装插件
opkg install /tmp/luci-app-5g-cpe-view_*.ipk
```

4. 刷新 LuCI 页面，在 **服务** 菜单下即可看到 **5G CPE View**

### 方法二：通过 LuCI 界面安装

1. 登录 OpenWrt 管理界面
2. 进入 **系统 → 软件包**
3. 点击 **上传软件包**，选择下载的 `.ipk` 文件安装

## 已编译架构

CI 会**自动发现并编译 OpenWrt 23.05.3 的全部架构**，包括但不限于：

| 架构 | 常见设备 |
|------|----------|
| x86/64 | 软路由、虚拟机 |
| armsr/armv8 | 树莓派4、Rockchip 等 ARM64 设备 |
| ath79/generic | TP-Link、Netgear 等 Atheros 平台 |
| mediatek/filogic | MT7981/MT7986 平台路由器 |
| mediatek/mt7622 | MT7622 平台路由器 |
| ramips/mt7621 | 新路由3、竞斗云、K2P 等 |
| ramips/mt76x8 | 极路由、小米路由器等 |
| bcm27xx/bcm2711 | 树莓派 4B |
| ipq40xx | Qualcomm IPQ40xx 平台 |
| mvebu/cortexa53 | Marvell ESPRESSObin 等 |
| sunxi/cortexa53 | 全志 H5/H6 等 |

> 完整列表请查看 [GitHub Actions 构建日志](https://github.com/XIAOZHAOXSXH/Build-5G-CPE-View/actions)，首次构建时会自动扫描所有可用目标。

## 使用说明

1. 将华为 5G 通讯壳通过 USB 或网线连接到路由器的 WAN 口
2. 确保通讯壳与路由器在同一网段（默认通讯壳 IP 为 `192.168.66.1`）
3. 安装本插件后，进入 **服务 → 5G CPE View**
4. 如有需要，可在页面顶部修改 IP 地址和端口号
5. 点击 **应用** 保存设置

## 常见问题

**Q: iframe 显示空白或无法加载？**
A: 请确认通讯壳已正确连接，且路由器可以 ping 通通讯壳的 IP 地址。部分浏览器可能因混合内容（HTTP/HTTPS）策略阻止加载，请尝试使用 HTTP 访问路由器后台。

**Q: 如何修改默认端口？**
A: 在插件页面顶部的端口下拉框中选择预设端口，或选择"自定义"输入任意端口号，点击"应用"即可保存。

## 许可证

本项目基于 [MIT License](LICENSE) 开源。

## 作者

**闲鱼：小赵先生**

[![闲鱼主页](https://img.shields.io/badge/闲鱼-小赵先生-orange)](https://www.goofish.com/personal?userId=2207876641359)

## 致谢

感谢所有 OpenWrt 社区的开发者们。
