#!/bin/bash

# Update system
sudo apt-get update
sudo apt-get upgrade -y

# Install Java Development Kit (JDK)
sudo apt-get install -y default-jdk

# Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package lists
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start Jenkins service (for systems using Upstart)
sudo service jenkins start

# Enable Jenkins service on boot (for systems using Upstart)
sudo update-rc.d jenkins defaults

# Print initial admin password (for systems using Upstart)
echo "Jenkins initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# End of script
