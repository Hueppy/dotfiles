#!/usr/bin/env bash

killall -q polybar

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	MONITOR=$m polybar --reload main &
done
