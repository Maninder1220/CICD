#!/bin/bash

# Update system
sudo apt update
sudo apt upgrade -y

# Install Java Development Kit (JDK) | Jenkins 2.452 uses Java 17 as the default Java version
sudo apt install openjdk-17.0.3-jdk

# Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package lists
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins service (for systems using Upstart)
sudo service jenkins start

# Enable Jenkins service on boot (for systems using Upstart)
sudo update-rc.d jenkins defaults

# Update List | Ensure that your package list is up to date
sudo apt update

# Install Maven ( Jenkin Pipline Project Need)
sudo apt install -y maven

# Check Version
mvn -version

# Check Jenkins Version
jenkins --version

# Print initial admin password (for systems using Upstart)
echo "Jenkins initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# End of script
