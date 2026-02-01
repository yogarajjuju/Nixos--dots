#!/usr/bin/env bash

options="󰌾 Lock\n󰍃 Logout\n󰑓 Reboot\n󰐥 Shutdown"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power" -theme-str 'window {width: 20%;}')

case "$chosen" in
  "󰌾 Lock")
    hyprlock
    ;;
  "󰍃 Logout")
    hyprctl dispatch exit
    ;;
  "󰑓 Reboot")
    systemctl reboot
    ;;
  "󰐥 Shutdown")
    systemctl poweroff
    ;;
esac
