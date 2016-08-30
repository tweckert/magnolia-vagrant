#!/bin/sh -e

# Update package list and upgrade all packages
sudo apt-get -qy update
sudo apt-get -qy upgrade
  
# Install Tomcat7
sudo apt-get -qy install tomcat7 tomcat7-admin

echo "Successfully installed Tomcat7"
echo ""