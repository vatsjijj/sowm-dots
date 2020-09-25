#!/bin/sh

setxkbmap -option terminate:ctrl_alt_bksp

dunst &
sxhkd &
picom &
~/.fehbg &
~/Downloads/simplelemon.sh &

exec dbus-launch sowm
