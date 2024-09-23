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
"flameshot-git"
"smassh-bin"
"wayland-pipewire-idle-inhibit"
"spacecadetpinball"
"cpu-x"
)

for package in "${packages[@]}"; do
	echo "Installing $package"
	yay --needed --noconfirm -S "$package"
done
