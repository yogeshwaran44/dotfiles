#!/bin/bash

i3status --config ~/.config/i3status/config | while :
do
    read line || break

    BRIGHT=$(cat /sys/class/backlight/*/brightness)
    MAX=$(cat /sys/class/backlight/*/max_brightness)
    PERCENT=$(( 1 + 100 * BRIGHT / MAX ))

    echo "BRT $PERCENT% ${line%,*} "
done

