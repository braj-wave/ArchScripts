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
              ###-------- AUR Packages -------------  
                 'betterlockscreen'
                 'blight'
                 'interface'
                 'cava'
                 'colorpicker'
                 'compton-tryone-git'
                 'downgrade'
                 'i3lock-color'
                 'ksuperkey'
                 'networkmanager-dmenu-git'
                 'obmenu-generator'
                 'perl-linux-desktopfiles'
                 'plymouth'
                 'polybar'
                 'pyroom'
                 'timeshift'
                 'toilet'
                 'tty-clock'
                 'unimatrix-git'
                 'xfce-polkit'
                         
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
     yay -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo