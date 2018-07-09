#!/bin/sh



ROOT=`pwd`
echo $ROOT



sudo pacman -Syyu --noconfirm




sudo pacman -S yaourt --noconfirm



sudo pacman -S ack --noconfirm
sudo pacman -S tree --noconfirm
sudo pacman -S vim --noconfirm
sudo pacman -S terminator --noconfirm
sudo yaourt -S google-chrome --noconfirm



sudo pacman -S mpd --noconfirm
sudo pacman -S ncmpcpp --noconfirm
ln -s $ROOT/mpd ~/.config



yaourt -S i3-kde --noconfirm
yaourt -S ttf-font-awesome --noconfirm
sudo pacman -S lua conky --noconfirm
ln -s $ROOT/plasma-workspace ~/.config
ln -s $ROOT/i3 ~/.config
echo 'export KDEWM=i3' >> .xinitrc


git config --global user.name "ws.jung.d"
git config --global user.email "ws.jung.d@gmail.com"
