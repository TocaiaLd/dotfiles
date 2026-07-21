#!/bin/bash

cliphist list | rofi -dmenu -theme-str "window {width: 20%; height: 200px; location: center; border-radius: 5px;} listview {scrollbar: false;} inputbar {enabled: false;}" -i -p "Choose" | cliphist decode | wl-copy