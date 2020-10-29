#!/bin/sh

# intialize timer 
start=`date +%s`

# first message
echo "Initializing Ubuntu Post Install Script for Dev (V 1.1)"


# install figlet
apt-get install figlet -y

# Start Message
figlet UBUNTU POST INSTALL SCRIPT


# Install tzdata dependency 
apt-get install tzdata -y


# Add repositories
add-apt-repository universe
 

# Docker Preparation 1
# Remove Old Installations 
apt-get remove docker -y
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
figlet git
apt-get install git -y

# configure git (replace by your own)
git config --global user.name "MAXIMILIAN REHBERGER"
git config --global user.email "maximilian.rehberger@belectric.com"


# system monitoring
apt-get install htop -y

# file transfer
apt-get install wget -y
apt-get install curl -y

# openssh
apt-get install openssh-server -y 
apt-get install openssh-client -y

# snap 
figlet snap
apt-get install snap -y 

# zsh
apt-get install zsh -y

# java jre & jdk
figlet java
apt-get install default-jre -y
apt-get install default-jdk -y

# php
filget php 
apt-get install php -y

# apache 
apt-get install apache2 -y 

# mysql 
apt-get install mysql-server -y

# python 
figlet python
apt-get install python -y
apt-get install python3 -y
apt-get install python3-pip -y

# nodejs
figlet node
apt-get install nodejs -y

# npm 
figlet npm
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

# vnc 
apt-get install tightvncserver -y

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
apt-get install virtualbox -y

# other stuff
apt-get install hollywood -y


# update 
apt-get -y update 

# fix broken install 
apt --fix-broken install -y


# Docker Preparation 3

# Add Docker GPG Key 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -


# Docker Installation 
figlet docker

# Add Docker Repository 
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

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

# update 
apt-get -y update 

# fix broken install 
apt --fix-broken install -y

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
apt-get install fonts-liberation -y

apt-get install libqt5gui5 -y 
apt-get install libqt5widgets5 -y 
apt-get install libqt5qml5 -y 
apt-get install libqt5quick5 -y 
apt-get install libqt5dbus5 -y
apt-get install libqt5webkit5 -y
apt-get install libqt5x11extras5 -y 
apt-get install qml-module-qtquick2 -y 
apt-get install qml-module-qtquick-controls -y 
apt-get install qml-module-qtquick-dialogs -y 
apt-get install qml-module-qtquick-window2 -y 
apt-get install qml-module-qtquick-layouts -y 

# apt fix broken install 
apt-get --fix-broken install -y

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
apt-get --fix-broken install -y
apt-get -y update 


# Install Mysql Workbench
figlet MySQL Workbench
apt-get install mysql-workbench-community -y

# Clean up DEB files
# Remove Installation directory 
rm -rf InstallScriptDir
 

# Copy all SSH keys (you have to move them in the folder before)
figlet ssh keys 
cp -r ssh-keys ~/.ssh/

# update 
apt-get -y update 

# fix broken install 
apt --fix-broken install -y

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
