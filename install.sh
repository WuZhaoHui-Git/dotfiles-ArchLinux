#!/usr/bin/env bash

# 获取脚本的绝对路径
SCRIPT_PATH=$(readlink -nf "$0")
# 获取脚本所在目录的绝对路径
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")

# 加载脚本
for file in "$SCRIPT_DIR"/bin/*; do
	ln -snf "$file" "$HOME"/.local/bin
done

# 加载shell环境
for file in "$SCRIPT_DIR"/config/.[!.]*; do
	if [[ -f $file && $file != .git* ]]; then
		ln -nf "$file" "$HOME"
	fi
done

# 加载配置文件
mkdir -p "$HOME"/.config
for file in "$SCRIPT_DIR"/config/*; do
	if [[ -d $file ]]; then
		ln -snf "$file" "$HOME"/.config
	elif [[ -f $file && $file == *flags.conf ]]; then
		ln -nf "$file" "$HOME"/.config
	fi
done

# 加载主题配置文件
mkdir -p "$HOME"/.config/themes
for file in "$SCRIPT_DIR"/themes/*; do
	if [[ -d $file ]]; then
		ln -snf "$file" "$HOME"/.config/themes
	fi
done

# 加载默认主题
ln -snf "$HOME"/.config/themes/catppuccin-mocha "$HOME"/.config/themes/current

# 特殊应用主题处理
mkdir -p "$HOME"/.config/btop/themes
ln -snf "$HOME"/.config/themes/current/btop.theme "$HOME"/.config/btop/themes/current.theme

mkdir -p ~/.config/eza
ln -snf ~/.config/themes/current/eza.yaml ~/.config/eza/theme.yml

ln -snf "$HOME"/.config/themes/current/nvim.lua "$HOME"/.config/nvim/lua/plugins/theme.lua

mkdir -p "$HOME"/.config/rofi/themes
ln -snf "$HOME"/.config/themes/current/rofi.rasi "$HOME"/.config/rofi/themes/current.rasi

ln -snf "$HOME"/.config/themes/current/yazi.toml "$HOME"/.config/yazi/theme.toml
ln -snf "$HOME"/.config/themes/current/yazi.tmTheme "$HOME"/.config/yazi/theme.tmTheme
