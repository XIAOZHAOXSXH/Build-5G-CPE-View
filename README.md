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

## 兼容架构

本插件为**通用架构（all）**，仅包含 Lua 脚本、HTML 模板和 UCI 配置，**一个 ipk 适用于所有 OpenWrt 架构**，无需区分平台。

支持：x86_64、ARM、MIPS、RISC-V 等所有运行 OpenWrt（18.06+）的设备。

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
