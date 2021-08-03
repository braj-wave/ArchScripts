#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _    
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "Installing Xorg-Packages For Archlinux"
echo

PKGS=(
            'xorg-server'
            'xorg-xbacklight'
            'xorg-fonts-misc'
            'xorg-xfd'
            'xorg-xkill'
            'xorg-xrandr'
            'xorg-xrdb'
            'xorg-xset'
            'xdotool'
            'xorg-xmodmap'
            'xorg-xev'
                         
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo