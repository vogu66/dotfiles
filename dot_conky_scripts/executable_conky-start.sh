#!/bin/zsh

# TODO eventually, should detect whether conky runs already before deciding
# whether to sleep
sleep 56s
killall conky

# select theme
# TODO for now -- eventually, should select randomly
theme="redhead"
# TODO eventually, should differentiate between single and double screen, too
# or screen rotated or resolution or whatever

if [ -f ~/.conky_scripts/last_theme ]
then
	# read old theme in file
	old=$(cat ~/.conky_scripts/last_theme)
	if [ ! -e ~/.conky_scripts/$old/icon_config ]
	then
		mkdir ~/.conky_scripts/$old/icon_config
	fi
	# save current icon positions to the right theme folder
	cp -rf /home/vogu/.config/xfce4/desktop/* ~/.conky_scripts/$old/icon_config
fi

# save current theme in file
echo $theme >! ~/.conky_scripts/last_theme

# → in the theme folder

# set icon positions to what's in the file
cp -rf ~/.conky_scripts/$theme/icon_config/* /home/vogu/.config/xfce4/desktop
# press f5 to update because that thing doesn't work and xfdesktop --reload doesn't either

# in another script
~/.conky_scripts/$theme/setup.sh
# works for xfce
# 	set wallpaper
# 	set options for wallpaper
#   just copy the configuration from settings editor

sleep 5s # to be sure the computer has time to update everything
		 # although it shouldn't be necessary,
		 # but better safe than sorry

ln -fs ~/.conky_scripts/$theme/conky.config ~/.config/conky/conky.config

conky
