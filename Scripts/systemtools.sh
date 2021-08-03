 !/usr/bin/env bash
 -------------------------------------------------------------------------
       _          _    __  __      _   _    
      /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
     / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
    /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
   Arch Linux Post Install Setup and Config
 -------------------------------------------------------------------------

echo
echo "Installing Xorg-Packages For Archlinux"
echo

PKGS=(
               ##System -----
                 'ack'
                 'bash-completion'
                 'dex'
                 'libxinerama'
                 'dunst'
                 'polkit'
                 'powertop'
                 'htop'
                 'ncdu'
                 'jq'
                 'gparted'
                 'gvfs'
                 'gvfs-mtp'
                 'gvfs-afc'
                 'gvfs-gphoto2'
                 'gvfs-smb'
                 'gvfs-google'
                 'sshfs'
                 'udisks2'
                 'gtk-engine-murrine'
                 'pv'
                 'xmlstarlet'
                 'xsettingsd'
                 'yad'
                 'xclip'
                         
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo