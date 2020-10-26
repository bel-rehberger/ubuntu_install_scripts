#!/bin/sh

# first message
echo "Initializing Ubuntu Post Install Script for Dev (V 1.1)"

# install figlet
apt-get install figlet -y

# Start Message
figlet UBUNTU POST INSTALL SCRIPT


# Add repositories
add-apt-repository universe
 

# Docker Preparation 1
# Remove Old Installations 
apt-get remove docker -y
apt-get remove docker-cli -y
apt-get remove docker-engine -y
apt-get remove docker.io -y
apt-get remove containerd -y 
apt-get remove runc -y


# Get the latest package lists
apt-get update
 

# Install from Repo
figlet apt packages

# main cli applications
apt-get install nano -y
apt-get install screen -y

# git
apt-get install git -y

# diff
apt-get install diff -y

# file transfer
apt-get install wget -y
apt-get install curl -y

# openssh
apt-get install openssh-server -y 
apt-get install openssh-client -y

# snap 
apt-get install snap -y 

# zsh
apt-get install zsh -y

# java jdk
apt-get install default-jre -y
apt-get install default-jdk -y

# python 
apt-get install python -y
apt-get install python3 -y
apt-get install python3-pip -y

# nodejs
apt-get install nodejs -y

# npm 
apt-get install npm -y

# Docker Preparation 2
# docker dependencies
apt-get install apt-transport-https -y
apt-get install ca-certificates -y
apt-get install gnupg-agent -y
apt-get install software-properties-common -y

# desktop applications
apt-get install gimp -y

# gnome 
apt-get install gnome -y

# gnome tweak tool
apt-get install gnome-tweak-tool -y

# file compressing tools
apt-get install zip -y
apt-get install unzip -y 
apt-get install rar -y  
apt-get install unrar -y

# file encryption tools 
apt-get install gpg -y  
apt-get install pgp -y

# sinusbot dependencies
apt-get install x11vnc -y
apt-get install xvfb -y
apt-get install libxcursor1 -y
apt-get install bzip2 -y
apt-get install libnss3 -y 
apt-get install libegl1-mesa -y 
apt-get install x11-xkb-utils -y 
apt-get install libasound2 -y 
apt-get install libpci3 -y 
apt-get install libxslt1.1 -y 
apt-get install libxkbcommon0 -y 
apt-get install libxss1 -y 
apt-get install libxcomposite1 -y 
apt-get install libglib2.0-0 -y

# additional tools
apt-get install filezilla -y
apt-get install teamviewer -y

# other stuff
apt-get install hollywood -y


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
apt-get install docker-ce -y
apt-get install docker-ce-cli -y 
apt-get install containerd.io -y 

# update ca certificates
update-ca-certificates


# Install OMZ
figlet oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Update OMZ
omz update 

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
dpkg -i ~/Downloads/InstallScriptDir/teamviewer_amd64.deb


# Clean up DEB files
# Remove Installation directory 
rm -rf ~/Downloads/InstallScriptDir
 

# Copy all SSH keys (you have to move them in the folder before)
figlet ssh keys 
cp -r ssh-keys ~/.ssh/


# update 
apt-get -y update

# upgrade
apt-get -y upgrade 

# apt cleanup
apt-get -y autoremove

# Final message
figlet DONE
 
# Exit the script
exit 0
