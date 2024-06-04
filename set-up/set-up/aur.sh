#!/bin/bash
packages=(
"librewolf-bin"
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
)

for package in "${packages[@]}"; do
	echo "Installing $package"
	paru --needed --noconfirm -S "$package"
done
