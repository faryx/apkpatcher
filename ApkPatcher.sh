#!/bin/bash

# Update and upgrade the system
apt update -y && apt upgrade -y

# Install Python
pkg install python

# Download RKPairip zip from GitHub
curl -L -o ApkPatcher.zip https://github.com/TechnoIndian/ApkPatcher/archive/refs/heads/main.zip

# Unzip the downloaded file
unzip ApkPatcher.zip

# Navigate to the extracted folder
cd ApkPatcher-main

# Install the Python package
pip install .

# Navigate back to the home directory
cd ~

# Clean up by removing the extracted folder and zip file
rm -rf ApkPatcher-main
rm ApkPatcher.zip

# Print success message
echo -e "\e[32m=================================================\e[0m"
echo -e "\e[1;34m[*] \e[32mGreat! \e[1;35mApkPatcher \e[32mInstalled Successfully..\e[0m"
echo -e "\e[32m=================================================\e[0m"
rm ApkPatcher.sh
