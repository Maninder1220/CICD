#!/bin/bash

# Update system
sudo apt-get update
sudo apt-get upgrade -y

# Start Jenkins service (for systems using Upstart)
sudo service jenkins start

# Enable Jenkins service on boot (for systems using Upstart)
sudo update-rc.d jenkins defaults

# Go to jenkins URL
echo "http://localhost:8080"