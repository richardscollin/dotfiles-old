#!/bin/bash

# Swap Alt_L and Control_L
xmodmap - <<EOF
remove mod1 = Alt_L
remove Control = Control_L
keysym Control_L = Alt_L
keysym Alt_L = Control_L
add mod1 = Alt_L
add Control = Control_L
EOF
