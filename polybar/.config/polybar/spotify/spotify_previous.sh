#!/bin/bash

SONG_INFO=$(playerctl --player=spotify metadata --format "{{ artist}} - {{ title }}" 2>/dev/null)

if [ $? -eq 0 ]; then
  echo "󰒮"
else
  echo ""
fi
