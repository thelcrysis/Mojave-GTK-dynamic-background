#!/bin/bash

sudo apt-get update
sudo apt-get install unzip
sudo apt-get install gsettings

mkdir $HOME/Pictures/Wallpapers/mojave-dynamic
wget https://files.rb.gd/mojave_dynamic.zip -P $HOME/Pictures/Wallpapers/mojave-dynamic/
wget https://raw.githubusercontent.com/thelcrysis/Mojave-GTK-dynamic-background/master/mojave.xml -P $HOME/Pictures/Wallpapers/
unzip $HOME/Pictures/Wallpapers/mojave-dynamic/mojave_dynamic.zip -d $HOME/Pictures/Wallpapers/mojave-dynamic/
rm -rf $HOME/Pictures/Wallpapers/mojave-dynamic/mojave_dynamic.zip 
rm -rf $HOME/Pictures/Wallpapers/mojave-dynamic/__MACOSX
sed -i -e "s/username/$USER/g" $HOME/Pictures/Wallpapers/mojave.xml
gsettings set org.gnome.desktop.background picture-uri "file:$HOME/Pictures/Wallpapers/mojave.xml"





