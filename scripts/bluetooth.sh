#!/bin/bash

MAC="88:0E:85:8F:73:31"

if bluetoothctl info $MAC | grep -q  "Connected: yes" ; then
   bluetoothctl disconnect $MAC
else 
   bluetoothctl connect $MAC
fi
   
