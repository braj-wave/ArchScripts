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
            ## Multimedia -----
            'ffmpeg'
            'ffmpegthumbnailer'
            'gst-libav'
            'gst-plugins-bad'
            'gst-plugins-base'
            'gst-plugins-good'
            'gst-plugins-ugly'
            'mpc'
            'mpd'
            'mplayer'
            'ncmpcpp'
            'tumbler'
                         
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo