#!/bin/bash

echo "$(pulseaudio-ctl current | cut -d% -f1)"
