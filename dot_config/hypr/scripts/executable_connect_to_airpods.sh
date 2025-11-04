#!/bin/bash

# The MAC address of the Bluetooth device you want to connect to
DEVICE_MAC="34:0E:22:3B:33:8F"

# Start bluetoothctl, then connect to the device and exit
echo -e "connect $DEVICE_MAC\nexit" | bluetoothctl

echo "Attempted to connect to $DEVICE_MAC"
