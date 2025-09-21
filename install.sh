#! /usr/bin/env bash

# 获取脚本的绝对路径
script_path=$(readlink -f "$0")
# echo "$script_path"
# 获取脚本所在目录的绝对路径
script_dir=$(dirname "$script_path")
# echo "$script_dir"

for file in $script_dir/.[!.]*; do
  if [[ -f $file && $file != .git* ]]; then
    ln -f $file ~
  fi
done

for file in $script_dir/*; do
  # echo $file
  # if [ -d $file ]; then
  #   ln -sf $file ~/.config
  # elif [[ -f $file && $file == *-flags.conf ]]; then
  #   ln -sf $file ~/.config
  # fi
	ln -sf $file ~/.config
done
