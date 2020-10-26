#!/bin/sh

# first message
echo "Initializing Ubuntu Install Script (V 1.0)"

# install figlet
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
apt-get install --dry-run wget -y
apt-get install --dry-run curl -y

# git
apt-get install --dry-run git -y

# snap 
apt-get install --dry-run snap -y 

# zsh
apt-get install --dry-run zsh -y

# java jdk
apt-get install --dry-run default-jre default-jdk -y

# python 
apt-get install --dry-run python -y
apt-get install --dry-run python3 -y

# nodejs
apt-get install --dry-run nodejs -y

# npm 
apt-get install --dry-run npm -y

# desktop applications
apt-get install --dry-run gimp -y

# gnome tweak tool
apt-get install --dry-run gnome-tweak-tool -y

# file compressing tools
apt-get install --dry-run zip
apt-get install --dry-run unzip
apt-get install --dry-run rar 
apt-get install --dry-run unrar

# additional tools
apt-get install --dry-run filezilla -y
apt-get install --dry-run teamviewer -y

# other stuff
apt-get install --dry-run hollywood -y


# Install OMZ
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Update OMZ
omz update 

# Copy OMZ Configuration - Set agnoster theme
cp omz_config ~/.zshrc

# Reload OMZ
source ~/.zshrc


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
