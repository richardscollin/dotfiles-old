#!/bin/bash

# https://superuser.com/a/1538005
# Set gnome-terminal next, previous tab to ctrl-tab and ctrl-shift-tab
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ next-tab '<Primary>Tab'
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ prev-tab '<Primary><Shift>Tab'

# move dash show applications bottom to top/left
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true

