#!/usr/bin/env zsh

# use image redhead from Marek Okon
# https://okonart.com/projects/yX4x

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s "/home/vogu/OneDrive/fonds/Brut/redhead.jpg"

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/image-style -s 4

# background unset because unseen anyways
