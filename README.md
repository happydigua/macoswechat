# macOS WeChat Multi-Open (Native & Safe) | 微信 macOS 多开工具 (原生、安全)

A simple, python-based script to create multiple instances of WeChat on macOS without any code injection or third-party tools. Supports custom icon colors (Blue, Red, etc.).

一个基于 Python 的简单脚本，用于在 macOS 上创建多个微信实例。无需任何代码注入或第三方工具，安全可靠。支持自定义图标颜色（蓝色、红色等）以便区分。

---

## ✨ Features | 特性

- **Native (原生)**: No injection, no risk of account banning. 不修改二进制文件，无封号风险。
- **Visual Distinct (视觉区分)**: Recolor the second/third WeChat icon to Blue, Red, etc. 可将第二/三个微信图标染成蓝色、红色等。
- **Simple (简单)**: Single script to manage creation, language, and launching. 一个脚本搞定创建、语言设置和启动。

---

## 🚀 Usage | 使用方法

### 1. Install Dependencies | 安装依赖
```bash
pip3 install Pillow
```

### 2. Create Second Instance (Blue Icon) | 创建第二个副本 (蓝色图标)
```bash
# 创建副本
python3 wechat_dual_open.py create

# 将图标染成蓝色
python3 wechat_dual_open.py recolor-icon --blue "#1296db"

# 启动
python3 wechat_dual_open.py launch
```

### 3. Create Third Instance (Red Icon) | 创建第三个副本 (红色图标)
```bash
# 创建第三个副本，指定不同的路径和标识符
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 create

# 将图标染成红色
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 recolor-icon --blue "#e0110d"

# 启动
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 launch
```

---

## 🛠️ Commands Summary | 命令详解

- `status`: Check current instances. 查看当前已创建的实例状态。
- `create`: Create a new app copy. 创建一个新的应用副本。
- `recolor-icon`: Change the app icon color. 修改应用图标颜色。
- `set-language`: Set language preference (default: zh-Hans). 设置语言偏好（默认为中文）。
- `launch`: Open the specified instance. 启动指定实例。

---

## ⚠️ Note | 注意事项

- **Updates**: If you update the official WeChat, you might need to run the script again to sync the copy. 如果更新了官方微信，可能需要重新运行脚本以同步副本。
- **Notifications**: Push notifications for copies might not be as reliable as the original app. 副本的推送通知可能不如原版稳定。

## 🤝 Credits | 鸣谢
Based on the work of [mcncarl/yichen-skills](https://github.com/mcncarl/yichen-skills).
Original idea from [@koffuxu](https://x.com/koffuxu/status/2043110831584690427).
