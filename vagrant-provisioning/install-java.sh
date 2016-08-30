#!/bin/sh -e

sudo apt-get update
sudo apt-get -y install software-properties-common python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo apt-get -q -y install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/environment
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

echo "Successfully installed Java8"
echo ""