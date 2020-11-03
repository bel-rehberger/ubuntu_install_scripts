#!/bin/sh

# first message
echo "Initializing Ubuntu Post Install Script for Dev (V 1.0)"

# install figlet
apt-get install figlet -y

# Start Message
figlet UBUNTU POST INSTALL SCRIPT


# Add repositories
add-apt-repository universe
# apt-add-repository ppa:tista/adapta 
 

# Docker Preparation 1
# Remove Old Installations 
apt-get remove --dry-run docker -y
apt-get remove --dry-run docker-cli -y
apt-get remove --dry-run docker-engine -y
apt-get remove --dry-run docker.io -y
apt-get remove --dry-run containerd -y 
apt-get remove --dry-run runc -y


# Get the latest package lists
apt-get update
 

# Install from Repo
figlet apt packages

# main cli applications
apt-get install --dry-run nano -y
apt-get install --dry-run screen -y

# git
apt-get install --dry-run git -y

# file transfer
apt-get install --dry-run wget -y
apt-get install --dry-run curl -y

# snap 
apt-get install --dry-run snap -y 

# zsh
apt-get install --dry-run zsh -y

# java jdk
apt-get install --dry-run default-jre -y
apt-get install --dry-run default-jdk -y

# python 
apt-get install --dry-run python -y
apt-get install --dry-run python3 -y
apt-get install --dry-run python3-pip -y

# nodejs
apt-get install --dry-run nodejs -y

# npm 
apt-get install --dry-run npm -y

# Docker Preparation 2
# docker dependencies
apt-get install --dry-run apt-transport-https -y
apt-get install --dry-run ca-certificates -y
apt-get install --dry-run gnupg-agent -y
apt-get install --dry-run software-properties-common -y

# desktop applications
apt-get install --dry-run gimp -y

# gnome 
apt-get install --dry-run gnome -y

# gnome tweak tool
apt-get install --dry-run gnome-tweak-tool -y

# file compressing tools
apt-get install --dry-run zip
apt-get install --dry-run unzip
apt-get install --dry-run rar 
apt-get install --dry-run unrar

# file encryption tools 
apt-get install --dry-run gpg 
apt-get install --dry-run pgp

# sinusbot dependencies
apt-get install --dry-run x11vnc -y
apt-get install --dry-run xvfb -y
apt-get install --dry-run libxcursor1 -y
apt-get install --dry-run bzip2 -y
apt-get install --dry-run libnss3 -y 
apt-get install --dry-run libegl1-mesa -y 
apt-get install --dry-run x11-xkb-utils -y 
apt-get install --dry-run libasound2 -y 
apt-get install --dry-run libpci3 -y 
apt-get install --dry-run libxslt1.1 -y 
apt-get install --dry-run libxkbcommon0 -y 
apt-get install --dry-run libxss1 -y 
apt-get install --dry-run libxcomposite1 -y 
apt-get install --dry-run libglib2.0-0 -y

# additional tools
apt-get install --dry-run filezilla -y
apt-get install --dry-run teamviewer -y

# other stuff
apt-get install --dry-run hollywood -y


# Docker Preparation 3

# Add Docker GPG Key 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


# Docker Installation 
figlet docker

# Add Docker Repository 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Refresh Repositories 
apt-get update

# Install Docker Engine 
apt-get install --dry-run docker-ce -y
apt-get install --dry-run docker-ce-cli -y 
apt-get install --dry-run containerd.io -y 

# update ca certificates
update-ca-certificates


# Install OMZ
figlet oh-my-zsh
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Update OMZ
# omz update 

# Copy OMZ Configuration - Set agnoster theme
cp configs/omz_config ~/.zshrc

# Reload OMZ Configuration
source ~/.zshrc


# Install snap packages
figlet snap packages

snap install chromium --classic #Chromium
snap install intellij-idea-community --classic --edge #IntelliJ Community
snap install code --classic #VSCode
snap install spotify #Spotify

# Install npm dependencies

# Install pip dependencies


# Create Installation directory
mkdir ~/Downloads/InstallScriptDir

# Get DEB files
figlet deb files

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads/InstallScriptDir
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -P ~/Downloads/InstallScriptDir
wget https://launcher.mojang.com/download/Minecraft.deb -P ~/Downloads/InstallScriptDir

# Install DEB files
dpkg -i ~/Downloads/InstallScriptDir/google-chrome-stable_current_amd64.deb
dpkg -i ~/Downloads/InstallScriptDir/Minecraft.deb
# dpkg -i ~/Downloads/InstallScriptDir/teamviewer_amd64.deb


# apt --fix-broken install -y # Fix Minecraft dependency issue.
 
# Clean up DEB files
# Remove Installation directory 
rm -rf ~/Downloads/InstallScriptDir
 

# Copy all SSH keys (you have to move them in the folder before)
figlet ssh keys 
cp -r ssh-keys ~/.ssh/


# update 
apt-get update

# upgrade
apt-get -y upgrade 

# apt cleanup
apt-get autoremove

# Final message
figlet DONE
 
# Exit the script
exit 0
