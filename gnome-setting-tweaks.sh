#!/bin/bash
set -e

# swap caps and escape
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:swapescape']"

# alt-click move/resize windows
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'
