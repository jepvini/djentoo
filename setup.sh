#!/bin/env bash

# This is a script to generate links and folder to make my config work

### CONFIG

echo "config"

#bspwm

mkdir -p ~/.config/bspwm
rm -f ~/.config/bspwm/bspwmrc
ln -s ~/.setup/config/bspwm/bspwmrc ~/.config/bspwm/

#neofetch

mkdir -p ~/.config/neofetch
rm -f ~/.config/neofetch/config.conf
ln -s ~/.setup/config/neofetch/config.conf ~/.config/neofetch/
rm -f ~/.config/neofetch/UwU.ascii
    ln -s ~/.setup/config/neofetch/UwU.ascii ~/.config/neofetch/

#picom

mkdir -p ~/.config/picom
rm -f ~/.config/picom/picom.conf
ln -s ~/.setup/config/picom/picom.conf ~/.config/picom/

#polybar

mkdir -p ~/.config/polybar
rm -f ~/.config/polybar/config.ini
ln -s ~/.setup/config/polybar/config.ini ~/.config/polybar

#sxhkd

mkdir -p ~/.config/sxhkd
rm -f ~/.config/sxhkd/sxhkdrc
chmod +x ~/.setup/config/sxhkd/sxhkdrc
ln -s ~/.setup/config/sxhkd/sxhkdrc ~/.config/sxhkd/


### HOME

echo "home"

# vim
unlink ~/.vimrc 2> /dev/null
ln -s ~/.setup/home/vim/vimrc ~/.vimrc

# bash
unlink ~/.bashrc 2> /dev/null
ln -s ~/.setup/home/bash/bashrc ~/.bashrc


### fonts
unlink ~/.local/share/fonts/AcPlus_IBM_VGA_8x16.ttf 2> /dev/null
ln -s ~/.setup/fonts/AcPlus_IBM_VGA_8x16.ttf ~/.local/share/fonts


echo "scripts"

### SCRIPTS
chmod +x ~/.setup/scripts/*

### important stuffs
# kernel config
cp /usr/src/linux/.config ~/.setup/kernel_config

# portage
cp /etc/portage/make.conf ~/.setup/portage
cp -r /etc/portage/package.use ~/.setup/portage
