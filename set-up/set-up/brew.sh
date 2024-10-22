#!/bin/bash

## Install script for Homebrew under MacOS
packages=(
"tmux"
"nikitabobko/tap/aerospace"
"font-jetbrains-mono-nerd-font"
"kitty"
"firefox"
"sketchybar"
"1password"
"hyperkey"
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
"rectangle"
"eza"
"zoxide"
"zellij"
# NeoVIM
"ripgrep"
"fd"
)

brew tap localsend/localsend
brew tap FelixKratz/formulae


for package in "${packages[@]}"; do
	echo "Installing $package"
	brew install "$package"
done

#run post install hooks
#defaults write com.apple.dock autohide -bool true; killall Dock
#defaults write NSGlobalDomain _HIHideMenuBar -bool true; killall SystemUIServer
