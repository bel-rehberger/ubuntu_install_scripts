#!/bin/bash

# NOTE: This install script is only for x86_64 (AMD64) architecture

# Debian environment non interactive
export DEBIAN_FRONTEND=noninteractive

# intialize timer 
start=`date +%s`

# first message
echo "Initializing Ubuntu Post Install Script for Dev (V 1.1)"


# install figlet
apt-get -y install figlet

# Start Message
figlet UBUNTU POST INSTALL SCRIPT


# Install tzdata dependency 
apt-get -y install tzdata 


# Add repositories
add-apt-repository universe
 

# Docker Preparation 1
# Remove Old Installations 
apt-get -y remove docker 
apt-get -y remove docker.io 
apt-get -y remove containerd  
apt-get -y remove runc 


# Get the latest package lists
apt-get update
 

# Install from Repo
figlet apt packages

# main cli applications
apt-get -y install nano 
apt-get -y install screen 

# git
figlet git
apt-get -y install git 

# git lfs 
apt-get -y install git-lfs  
git lfs install 

# configure git (replace by your own)
git config --global user.name "MAXIMILIAN REHBERGER"
git config --global user.email "maximilian.rehberger@belectric.com"


# system monitoring
apt-get -y install htop 

# file transfer
apt-get -y install wget 
apt-get -y install curl 

# openssh
apt-get -y install openssh-server  
apt-get -y install openssh-client 

# snap 
figlet snap
apt-get -y install snap  

# pacman
figlet pacman 
apt-get -y install pacman 

# zsh
apt-get -y install zsh 

# java jre & jdk
figlet java
apt-get -y install default-jre 
apt-get -y install default-jdk 

# php
filget php 
apt-get -y install php 

# apache 
apt-get -y install apache2  

# mysql 
apt-get -y install mysql-server 

# python 
figlet python
apt-get -y install python 
apt-get -y install python3 
apt-get -y install python3-pip 

# nodejs
figlet node
apt-get -y install nodejs 

# npm 
figlet npm
apt-get -y install npm 

# Docker Preparation 2
# docker dependencies
apt-get -y install apt-transport-https 
apt-get -y install ca-certificates 
apt-get -y install gnupg-agent 
apt-get -y install software-properties-common 

# desktop applications
apt-get -y install gimp 

# gnome 
apt-get -y install gnome 

# gnome tweak tool
apt-get -y install gnome-tweak-tool 

# vnc 
apt-get -y install tightvncserver 

# file compressing tools
apt-get -y install zip 
apt-get -y install unzip  
apt-get -y install rar  
apt-get -y install unrar 

# file encryption tools 
apt-get -y install gpg   
apt-get -y install pgp 

# sinusbot dependencies
apt-get -y install x11vnc 
apt-get -y install xvfb 
apt-get -y install libxcursor1 
apt-get -y install bzip2 
apt-get -y install libnss3  
apt-get -y install libegl1-mesa 
apt-get -y install x11-xkb-utils  
apt-get -y install libasound2 
apt-get -y install libpci3 
apt-get -y install libxslt1.1 
apt-get -y install libxkbcommon0 
apt-get -y install libxss1 
apt-get -y install libxcomposite1 
apt-get -y install libglib2.0-0 

# additional tools
apt-get -y install filezilla 
apt-get -y install virtualbox 

# other stuff
apt-get -y install hollywood 


# update 
apt-get -y update 

# fix broken install 
apt-get -y --fix-broken install


# Docker Preparation 3

# Add Docker GPG Key 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -


# Docker Installation 
figlet docker

# Add Docker Repository 
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Refresh Repositories 
apt-get -y update

# Install Docker Engine 
apt-get -y install docker-ce
apt-get -y install docker-ce-cli
apt-get -y install containerd.io

# update ca certificates
update-ca-certificates


# Install OMZ
figlet oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# Update OMZ
omz update 

# Copy OMZ Configuration - Set agnoster theme
cp configs/omz_config ~/.zshrc

# Reload OMZ Configuration
source ~/.zshrc

# update 
apt-get -y update 

# fix broken install 
apt-get -y --fix-broken install

# Install snap packages
figlet snap packages

systemctl start snapd.service
systemctl status snapd.service
snap version 

snap install chromium --classic #Chromium
snap install intellij-idea-community --classic --edge #IntelliJ Community
snap install code --classic #VSCode
snap install postman #Postman
snap install spotify #Spotify

# Install npm dependencies
figlet npm dependencies
npm install semver
npm install truffle 
npm install drizzle

# Install pip dependencies



# DEB Dependencies
apt-get -y install fonts-liberation 

apt-get -y install libqt5gui5 
apt-get -y install libqt5widgets5 
apt-get -y install libqt5qml5 
apt-get -y install libqt5quick5 
apt-get -y install libqt5dbus5 
apt-get -y install libqt5webkit5
apt-get -y install libqt5x11extras5 
apt-get -y install qml-module-qtquick2 
apt-get -y install qml-module-qtquick-controls
apt-get -y install qml-module-qtquick-dialogs 
apt-get -y install qml-module-qtquick-window2 
apt-get -y install qml-module-qtquick-layouts 

# apt fix broken install 
apt-get -y --fix-broken install 

# update
apt-get update 

# Get DEB files
figlet deb files

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  # Google Chrome
wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb                # MySQL Workbench
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb        # Teamviewer
wget https://launcher.mojang.com/download/Minecraft.deb                         # Minecraft
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb                 # Steam

# Install DEB files
dpkg -i mysql-apt-config_0.8.15-1_all.deb
dpkg -i google-chrome-stable_current_amd64.deb
dpkg -i teamviewer_amd64.deb
dpkg -i Minecraft.deb
dpkg -i steam.deb

# Update apt-cache
apt-get -y --fix-broken install
apt-get -y update 


# Install Mysql Workbench
figlet MySQL Workbench
apt-get -y install mysql-workbench-community 

# Clean up DEB files
rm -rf mysql-apt-config_0.8.15-1_all.deb
rm -rf google-chrome-stable_current_amd64.deb
rm -rf teamviewer_amd64.deb
rm -rf Minecraft.deb
rm -rf steam.deb
 

# Copy all SSH keys (you have to move them in the folder before)
figlet ssh keys 
cp -r ssh-keys ~/.ssh/

# update 
apt-get -y update 

# fix broken install 
apt-get -y --fix-broken install

# update 
apt-get -y update

# upgrade
apt-get -y upgrade 

# apt cleanup
apt-get -y autoremove

# end time 
end=`date +%s`

# difference 
runtime=$((end-start))

# Final message
figlet DONE IN $runtime s
 
# Exit the script
exit 0
