#!/bin/bash
packages=(
"librewolf-bin"
"zen-browser-bin"
"appimagelauncher"
"pcloud-drive"
"spotify"
"mullvad-vpn-bin"
"cli-visualizer"
"1password"
"epsonscan2"
"sway-audio-idle-inhibit-git"
"brave-bin"
"ventoy-bin"
"makemkv"
"localsend-bin"
"smassh-bin"
"wayland-pipewire-idle-inhibit"
"spacecadetpinball"
"cpu-x"
"hyprshot"
)

for package in "${packages[@]}"; do
	echo "Installing $package"
	paru --needed --noconfirm -S "$package"
done
