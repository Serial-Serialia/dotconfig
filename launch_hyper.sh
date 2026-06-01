#/etc/shell/bash

echo "Installing Hyprland and applets"

pacman -S hyprland rofi hyprpolkitagent hyprpaper thunar mako xdg-desktop-portal-hyprland waybar wl-clipboard hyprlock power-profiles-daemon polkit hyprshutdown --noconfirm
sudo ln -s $(which kitty) /usr/bin/xdg-terminal-exec

echo "Installing sddm and enabling it"

pacman -S sddm --noconfirm

systemctl enable sddm.service

echo "Installing nvim and programing languages"

pacman -S python nodejs npm aspnet-targeting-pack dotnet nvim python-pip dbeaver jdk-openjdk --noconfirm

echo "Installing fonts and icons"

pacman -S otf-font-awesome otf-monaspace-nerd ttf-nerd-fonts-symbols --noconfirm

echo "Installing yay"

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "Installing hyprcap"

yay -S hyprcap

echo "Creating Mysql docker container"

docker run --name mysql -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_USER=user -e MYSQL_PASSWORD=password -p 3306:3306 -d mysql:latest

echo "Moving repositories config files to .config"

cp ./*/ ~/.config/
