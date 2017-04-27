#!/bin/bash
set -e
declare -A bindings

bindings["/commands/custom/<Super>Return"]=xfce4-popup-whiskermenu
bindings["/xfwm4/custom/<Super>Down"]=tile_down_key
bindings["/xfwm4/custom/<Super>h"]=tile_left_key
bindings["/xfwm4/custom/<Super>j"]=maximize_window_key
bindings["/xfwm4/custom/<Super>l"]=tile_right_key
bindings["/xfwm4/custom/<Super>n"]=tile_down_left_key
bindings["/xfwm4/custom/<Super>o"]=tile_up_right_key
bindings["/xfwm4/custom/<Super>period"]=tile_down_right_key
bindings["/xfwm4/custom/<Super>y"]=tile_up_left_key

for k in "${!bindings[@]}";do
    xfconf-query -c xfce4-keyboard-shortcuts -n -p "$k" -s "${bindings[$k]}"
done
