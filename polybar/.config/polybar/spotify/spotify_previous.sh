#!/bin/bash

STATUS=$(playerctl --player=spotify status 2>/dev/null)

if [ $? -eq 0 ]; then
  echo "󰒮"
else
  echo ""
fi
