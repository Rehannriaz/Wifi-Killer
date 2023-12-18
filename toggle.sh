#!/bin/bash
WIFI_STATE="on"

while true; do
    read -s -n 2 key  # Read two characters silently (without echoing to the terminal)

    # Check if the key combination is Alt + ]
    if [[ $key == $'\e]' ]]; then
        if [[ $WIFI_STATE == "on" ]]; then
            echo "wifi off"
            nmcli radio wifi off
            WIFI_STATE="off"
        else
            echo "wifi on"
            nmcli radio wifi on
            WIFI_STATE="on"
        fi  
    fi
done
