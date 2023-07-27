#!/bin/bash
DEVICE="FocalTechPS/2 FocalTech Touchpad"
PROP="Device Enabled"
STATE=$(xinput list-props "$DEVICE" | grep "$PROP" | grep -o "[01]$")

if [ $STATE == '1' ];then
    xinput disable "$DEVICE"
else
    xinput enable "$DEVICE"
fi