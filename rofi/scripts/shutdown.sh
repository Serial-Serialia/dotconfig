#!/bin/bash

option=$(printf "Logout\nLock\nRestart\nShutdown" | rofi -dmenu -p "")

case "$option" in
	"Logout") -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit ;;
	"Lock") hyprlock ;;
	"Restart") systemctl reboot ;;
	"Shutdown") systemctl poweroff ;;
esac
