#!/bin/bash
option=$(echo -e "Poweroff\nReboot\nLogout" | rofi -dmenu -theme-str "window {width: 10%; height: 100px; location: northeast; y-offset: 5px; border-radius: 5px;} listview {scrollbar: false;} inputbar {enabled: false;}" -i -p "Choose")

case "$option" in
    "Poweroff")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Logout")
        hyprctl dispatch exit
        ;;
esac
