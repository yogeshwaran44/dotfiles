#!/bin/bash

OUT=~/Videos/screen_record_$(date +%F_%T).mp4

ffmpeg \
-f x11grab -s 1366x768 -i :0.0 \
-f pulse -i alsa_output.pci-0000_00_14.2.analog-stereo.monitor \
-c:v libx264 -preset ultrafast -crf 23 \
-c:a aac -b:a 128k "$OUT"

