#!/bin/bash

## Install script for Homebrew under MacOS
packages=(
"font-jetbrains-mono-nerd-font"
"firefox"
"alacritty"
"man"
"stow"
"neovim"
"btop"
"fastfetch"
"obsidian"
"tree"	
"vlc"
"node"
"lf"
"thunderbird"
"php"
"composer"
"docker"
"docker-compose"
"fish"
"starship"
"spotify"
"brave-browser"
"localsend"
# NeoVIM
"ripgrep"
"fd"
)

brew tap localsend/localsend

for package in "${packages[@]}"; do
	echo "Installing $package"
	sudo brew install "$package"
done
