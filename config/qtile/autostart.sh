#!/usr/bin/env bash

COLORSCHEME=Nord

# xrdb -merge ~/.Xresources

nm-applet &
blueman-applet &
nitrogen --restore &
dunst &
picom &

xrandr --output HDMI-0 --mode 1920x1080 --rate 144 &
