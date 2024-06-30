#!/bin/bash
packages=(
"firefox"
"kitty"
"timeshift"
"nemo"
"man"
"waybar"
"stow"
"neovim"
"hypridle"
"bluez"
"bluez-utils"
"brightnessctl"
"guvcview"
"dunst"
"libappindicator-gtk3"
"hyprpaper"
"cmatrix"
"btop"
"neofetch"
"hyprlock"
"ttf-nerd-fonts-symbols-mono"
"ttf-jetbrains-mono"
"noto-fonts"
"noto-fonts-emoji"
"noto-fonts-cjk"
"noto-fonts-extra"
"power-profiles-daemon"
"obsidian"
"wl-clipboard"
"tree"	
"yt-dlp"
"vlc"
"ffmpegthumbnailer"
"e2fsprogs"
"veracrypt"
"unrar"
"nodejs"
"npm"
"lf"
"eog"
"pavucontrol"
"exfatprogs"
"thunderbird"
"nemo-fileroller"
"discord"
"php"
"composer"
"docker"
"docker-compose"
"fish"
"starship"
# NeoVIM
"ripgrep"
"fd"
)

for package in "${packages[@]}"; do
	echo "Installing $package"
	sudo pacman --needed --noconfirm -S "$package"
done

#run post install hooks
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now power-profiles-daemon.service
sudo systemctl enable --now docker.service
sudo usermod -a -G docker $USER
gsettings set org.gnome.desktop.privacy remember-recent-files false
