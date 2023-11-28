#! /bin/bash

#Author: Blaise
#DAte:   28 Nov, 2023
#Decription: "Installation of jenkins server on ubuntu"


## update system
sudo apt-get update

# Install Java SDK 11
sudo apt-get install openjdk-11-jdk -y

# Download and Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins to run on Boot
sudo systemctl enable jenkins