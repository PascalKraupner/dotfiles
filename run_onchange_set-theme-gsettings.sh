#!/bin/bash
# Set desktop theme via gsettings so Electron/Chromium apps (Brave, Obsidian, etc.)
# pick up the correct theme — these apps ignore settings.ini and read dconf directly.
# run_onchange_: re-runs on every chezmoi apply when this file changes.

gsettings set org.gnome.desktop.interface gtk-theme    'Tokyonight-Dark'
gsettings set org.gnome.desktop.interface icon-theme   'Papirus-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'
gsettings set org.gnome.desktop.interface cursor-size  24
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

