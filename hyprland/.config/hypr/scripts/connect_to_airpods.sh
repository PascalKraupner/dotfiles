#!/bin/bash

# The MAC address of the Bluetooth device you want to connect to
DEVICE_MAC="74:15:F5:46:87:E6"

# Start bluetoothctl, then connect to the device and exit
echo -e "connect $DEVICE_MAC\nexit" | bluetoothctl

echo "Attempted to connect to $DEVICE_MAC"
