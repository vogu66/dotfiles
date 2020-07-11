#!/bin/zsh

# eventually, should detect whether conky runs already before deciding whther to sleep
sleep 61s
killall conky

# select theme
# for now -- eventually, should select randomly
theme="redhead"
# eventually, should differentiate between single and double screen, too

# → in the theme folder
# in another script
# works for xfce
# 	set wallpaper
# 	set options for wallpaper
#   just copy the configuration from settings editor
~/.conky_scripts/$theme/setup.sh

# sleep 5s # to be sure the computer has time to update everything
		 # although it shouldn't be necessary

ln -fs ~/.conky_scripts/$theme/conky.config ~/.config/conky/conky.config

conky
