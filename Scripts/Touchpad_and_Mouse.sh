#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _    
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "Installing Touchpad and Mouse Packages For Archlinux"
echo

PKGS=(
            ##-------- Touchpad and Mouse ----------------##
            'xorg-xinput'
            'xf86-input-libinput'
            'xf86-input-synaptics'
            'xf86-input-void'
            'xf86-input-wacom'
                         
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo