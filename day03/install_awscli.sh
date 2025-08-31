#!/bin/bash

<< Installation
Below are the Script for the installation of the AWS CLI
Installation

#If any command fails it will exit
set -e 

echo "Updating the system Packages...."
sudo apt update -y

echo "Installing the Unzip and curl....."
sudo apt install unzip curl -y

echo "Downloading the AWS CLI.....and save it to awscliv2.zip "
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Unzipping the file......."
unzip awscliv2.zip

echo "Installing the AWS CLI"
sudo ./aws/install

echo "Cleaning......."
sudo -rf awscliv2.zip aws/

echo "Verifying installation....."
aws --version

echo "AWS CLI Successfully downloaded and installed on a system"

