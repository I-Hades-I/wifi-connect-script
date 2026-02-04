#!/bin/bash
SSID="Your ssid"
PASSWORD="Your network password"
INTERFACE="wlan0"

nmcli dev wifi connect "$SSID" password "$PASSWORD" ifname "$INTERFACE"

sudo ip link set dev "$INTERFACE" && sudo macchanger -r "$INTERFACE" && sudo ip link set dev "$INTERFACE" down
