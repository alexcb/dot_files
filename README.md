dot_files
=========

Random user setting files (e.g. vimrc, bashrc)

Misc configs

    # use alt-click to move/resize windows
    gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
    gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'

    # swap escape and tab
    dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"

