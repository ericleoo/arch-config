#!/bin/bash

state=$(xinput list-props "SynPS/2 Synaptics TouchPad" | grep "Device Enabled" | grep -o "[01]$")

if [ $state == '1' ];then
  xinput --disable "SynPS/2 Synaptics TouchPad"
else
  xinput --enable "SynPS/2 Synaptics TouchPad"
fi
