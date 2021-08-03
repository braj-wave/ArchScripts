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
            ## Networking / Internet -----
            'bmon'
            'inetutils'
            'vivaldi'
            'firefox'
            'networkmanager'
            'networkmanager-openvpn'
            'bluez'
            'bluez-utils'
            'nethogs'
            'nm-connection-editor'
            'wget'
            'git'
                         
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo