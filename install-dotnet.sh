#!/bin/bash

# Update package list and install required dependencies
sudo apt update
sudo apt install -y wget apt-transport-https software-properties-common

# Download Microsoft package signing key and add it to the system
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# Install .NET SDK 8.0
sudo apt update
sudo apt install -y dotnet-sdk-8.0

# Install .NET Runtime 7.0 (this ensures the runtime is also installed)
sudo apt install -y dotnet-runtime-7.0

echo ".NET SDK 7.0 and Runtime 7.0 installed successfully!"
