#!/bin/bash

# Notification ID for dunstify (use a unique number to avoid conflicts with other notifications)
NOTIF_ID=9912

# Get current power mode
current_mode=$(powerprofilesctl get)

# Define all possible modes (you might need to adjust these based on `powerprofilesctl list`)
modes=("performance" "balanced" "power-saver")

# Find the index of the current mode
for i in "${!modes[@]}"; do
  if [[ "${modes[$i]}" == "$current_mode" ]]; then
    current_index=$i
    break
  fi
done

# Calculate the next mode index
new_index=$(((current_index + 1) % ${#modes[@]}))

# Set the new power mode
powerprofilesctl set ${modes[$new_index]}

# Send a notification using dunstify, replacing the old one if it exists
notify-send --replace-id=$NOTIF_ID \
  --icon=preferences-system-power \
  "Power Mode Changed" \
  "Switched to ${modes[$new_index]^} mode."
