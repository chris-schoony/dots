#!/bin/bash

STATUS=$(playerctl --player=spotify status 2>/dev/null)

if [ $? -eq 0 ]; then
  if [ "$STATUS" = "Paused" ]; then
    echo "󰐊"
  elif [ "$STATUS" = "Playing" ]; then
    echo "󰏤"
  else
    echo ""
  fi
else
  echo ""
fi
