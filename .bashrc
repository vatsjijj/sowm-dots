#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT1| grep -E "state|to\ full|percentage"'
PS1='[\u@\h \W]\$ '
alias map="telnet mapscii.me"
