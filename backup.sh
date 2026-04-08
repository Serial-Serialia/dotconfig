#!/bin/bash

echo "Creating backup"

cp -rf ~/.config/hypr/* ~/backup/hypr/
cp -rf ~/.config/nvim/* ~/backup/nvim/
cp -rf ~/.config/waybar/* ~/backup/waybar/
cp -rf ~/.config/rofi/* ~/backup/rofi/
cp -rf ~/.config/kitty/* ~/backup/kitty/
echo "Backups made"
