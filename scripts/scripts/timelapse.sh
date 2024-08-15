#!/bin/bash

# Check if interval argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 -int <interval_in_seconds>"
  exit 1
fi

# Extract the interval value
interval=$2
counter=1

while true; do
  # Take a fullscreen screenshot and save it to the current directory with a sequential name
  screencapture -x ./${counter}.png
  
  # Increment the counter
  ((counter++))
  
  # Wait for the specified interval
  sleep "$interval"
done
