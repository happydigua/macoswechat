#!/bin/bash

# macOS WeChat Multi-Open One-Click Installer
# 微信 macOS 多开一键安装脚本

set -e

echo "🚀 正在开始一键配置微信双开..."

# 1. 检查 Python 环境
if ! command -v python3 &> /dev/null; then
    echo "❌ 错误：您的 Mac 似乎没有安装 Python3。请先安装 Python。"
    exit 1
fi

# 2. 安装图片处理依赖
echo "📦 正在安装必要插件 (Pillow)..."
python3 -m pip install Pillow --quiet --break-system-packages 2>/dev/null || python3 -m pip install Pillow --quiet

# 3. 执行创建逻辑 (默认创建第二个微信并染成蓝色)
echo "📂 正在创建微信副本并染成蓝色 (这可能需要 1-2 分钟，请稍候)..."
python3 wechat_dual_open.py create
python3 wechat_dual_open.py recolor-icon --blue "#1296db"

# 4. 启动
echo "✨ 全部完成！正在为您启动第二个微信..."
python3 wechat_dual_open.py launch

echo "------------------------------------------------"
echo "✅ 大功告成！"
echo "📱 您可以在 '应用程序' 文件夹中找到蓝色的 'WeChat-2'。"
echo "💡 建议将其拖动到 Dock 栏固定使用。"
echo "------------------------------------------------"
