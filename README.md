# 微信 macOS 多开工具 (原生、安全、一键) 
### macOS WeChat Multi-Open (Native & Safe)

这是一个让您的 Mac 同时运行多个微信的超简单方案。**原生实现，不修改代码，不封号。**

---

## 🚀 傻瓜式一键安装 (推荐)

如果您想立刻拥有第二个微信（蓝色图标），只需打开“终端”（Terminal），复制并粘贴以下命令按回车：

```bash
git clone https://github.com/happydigua/macoswechat.git && cd macoswechat && chmod +x install.sh && ./install.sh
```

**就这样！** 脚本运行完后，您的蓝色微信会自动跳出来。

---

## 🎨 想要开更多？(进阶用法)

如果您想开第三个微信（比如红色），请在终端依次运行：

```bash
# 1. 创建第三个副本
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 create

# 2. 染成红色
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 recolor-icon --blue "#e0110d"

# 3. 启动
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 launch
```

---

## ✨ 为什么选择这个方案？

1.  **绝对安全**：通过 macOS 官方的 Bundle ID 机制实现，不涉及任何外挂或插件注入。
2.  **视觉区分**：自动给图标染色（蓝、红、橙等），再也不怕点错账号。
3.  **极简操作**：不需要懂编程，一键脚本自动搞定依赖和重签名。

---

## 🤝 鸣谢
本项目基于 [mcncarl/yichen-skills](https://github.com/mcncarl/yichen-skills) 的脚本进行封装优化。
灵感来源 [@koffuxu](https://x.com/koffuxu/status/2043110831584690427)。
