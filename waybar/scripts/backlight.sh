#!/usr/bin/env bash

offset=1
if [[ -n $2 ]]; then
	offset=$2
fi
case $1 in
	'down') brightnessctl -n set $offset%- ;;
	'up') brightnessctl -n set $offset%+ ;;
esac

level=$(brightnessctl -m | awk -F',' '{print $4}')

notify-send "亮度： $level" -h int:value:"$level" -i "xfpm-brightness-lcd" -r 2825
