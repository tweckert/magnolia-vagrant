#!/bin/sh -e

# apt packages for Java8
sudo echo "deb http://ftp.us.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list

echo "Successfully configured apt sources"
echo ""