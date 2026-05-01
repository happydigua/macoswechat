# macOS WeChat Multi-Open (Native & Safe)

A simple, python-based script to create multiple instances of WeChat on macOS without any code injection or third-party tools. Supports custom icon colors (Blue, Red, etc.).

## Features
- **Native**: No injection, no risk of account banning.
- **Visual Distinct**: Recolor the second/third WeChat icon to Blue, Red, etc.
- **Simple**: Single script to manage everything.

## Usage
### 1. Install Dependencies
```bash
pip3 install Pillow
```

### 2. Create Second Instance (Blue Icon)
```bash
python3 wechat_dual_open.py create
python3 wechat_dual_open.py recolor-icon --blue "#1296db"
python3 wechat_dual_open.py launch
```

### 3. Create Third Instance (Red Icon)
```bash
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 create
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 recolor-icon --blue "#e0110d"
python3 wechat_dual_open.py --target-app ~/Applications/WeChat-3.app --bundle-id com.tencent.xin3 launch
```

## Credits
Based on the work of [mcncarl/yichen-skills](https://github.com/mcncarl/yichen-skills).
