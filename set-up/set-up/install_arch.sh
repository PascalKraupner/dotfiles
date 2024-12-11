#!/bin/bash
sudo pacman -Syu --noconfirm --needed base-devel
sudo pacman -S --noconfirm git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -sic --noconfirm
cd ..
rm -rf paru

bash pacman.sh
bash aur.sh
bash shell.sh

