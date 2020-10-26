#!/bin/sh

# first message
echo "Initializing Ubuntu Install Script (V 1.0)"

# install figlet
echo Installing Figlet
apt-get install figlet -y

# Start Message
figlet UBUNTU INSTALL SCRIPT
 
# Add additional repositories
# apt-add-repository ppa:tista/adapta 
 
# Get the latest package lists
apt-get update
 
# Get DEB files
#wget https://launcher.mojang.com/download/Minecraft.deb
 
# Install from Repo

# main cli applications
apt-get install --dry-run nano -y
apt-get install --dry-run screen -y
apt-get install --dry-run snap -y 

# git
apt-get install --dry-run git -y

# zsh
apt-get install --dry-run zsh -y

# java jdk
apt-get install --dry-run default-jre default-jdk -y

# python 
apt-get install python -y
apt-get install python3 -y

# npm 

# desktop applications
apt-get install --dry-run gimp -y

# additional tools
apt-get install --dry-run teamviewer -y

# other stuff
apt-get install --dry-run hollywood -y

#apt install gnome-tweak-tool -y
#apt-get install ulauncher -y
#apt-get install filezilla -y
#apt-get install inkscape -y
#apt-get install calibre -y
#apt-get install torbrowser-launcher -y
#apt-get install ghostwriter -y
#apt-get install hunspell-en-gb -y # Adds spellcheck to Ghostwriter
#
#apt-get install plank -y

# Install OMZ

# Install snap packages
snap install intellij-idea-community --classic --edge #IntelliJ Community
snap install code --classic #VSCode
snap install spotify #Spotify
 
# Install DEB files
#dpkg -i Minecraft.deb
#apt --fix-broken install -y # Fix Minecraft dependency issue.
 
# Clean up DEB files
#rm -f Minecraft.deb
 
# Install requirements for Ulauncher PW generator
apt install python3-pip -y
#pip3 install pwgen
 
# Final message
figlet DONE
 
# Exit the script
exit 0
