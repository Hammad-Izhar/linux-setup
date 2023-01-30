#!/bin/bash
cd ~

echo Installing Dependencies...
echo curl
sudo apt-get install curl
echo make
sudo apt-get install make
echo git
sudo apt-get install git

################

echo Install GNOME Tweaks
sudo apt update
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool
gnome-tweaks

################

echo Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

################

echo Install VSCode
sudo snap install --classic code

################

echo Install IntellIJ Ultimate
sudo snap install intellij-idea-ultimate --classic

################

echo Install Slack
sudo snap install slack

################

echo Install Discord
sudo snap install discord

################ 

echo Install Tilda
sudo apt install Tilda

################

echo Install Zsh
sudo apt-get install zsh

################

Echo Install OhMyZsh
curl -L http://install.ohmyz.sh | sh
chsh -s `which zsh`
zsh
echo copy over .zshrc
sudo apt-get install fonts-powerline

# install ohmyzsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
source ~/.zshrc
echo logout and log backin

