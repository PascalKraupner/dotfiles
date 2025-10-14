#!/bin/bash

if hyprctl monitors | grep -q "Monitor DP-"; then
    hyprctl keyword monitor "eDP-1, disable"
else
    systemctl suspend
fi
