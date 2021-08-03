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
            ## Files -----
            'ranger'
            'pcmanfm'
            'zip'
            'p7zip'
            'unzip'
            'unrar'
            'xarchiver'
            'xdg-user-dirs'

            'thunar'
            'thunar-archive-plugin'
            'thunar-media-tags-plugin'
            'thunar-volman'
                         
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo