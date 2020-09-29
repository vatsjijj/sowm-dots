#!/bin/sh

setxkbmap -option terminate:ctrl_alt_bksp

dunst &
sxhkd &
picom &
~/.fehbg &
cat ~/.cache/wal/sequences &
~/Downloads/simplelemon.sh &

exec dbus-launch sowm
