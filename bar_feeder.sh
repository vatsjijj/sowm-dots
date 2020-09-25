#!/bin/sh

# Date and time.
clock() {
	date +"%A, %b %-d. %-I:%M %P"
}

# Get battery.
battery() {
	cat /sys/class/power_supply/BAT1/capacity
}

# Credit to co1ncidence on github for volume script.
volume() {
	echo "$(amixer sget Master | grep -i "right:" | awk -F '[][]' '{ print $2 }')"
}

# Wifi, probably.
wifi() {
	nmcli -t -f name connection show --active
}

# Commence, the bar.
while true; do
	BAR_INPUT="%{l}Battery: $(battery)% | Connected to: $(wifi) %{c}$(clock) %{r}Volume: $(volume)"
	echo $BAR_INPUT
	sleep 1
done
