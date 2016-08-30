#!/bin/sh -e

sudo -E /etc/init.d/tomcat7 stop
cd /var/lib/tomcat7
sudo rm -rf webapps
sudo mkdir webapps

# replace 'magnolia-community-webapp-5.4.8.war' by the file name of your Magnolia webapp bundle
sudo cp /vagrant-data/tomcat/webapps/magnolia-community-webapp-5.4.8.war webapps/magnoliaAuthor.war
sudo cp /vagrant-data/tomcat/webapps/magnolia-community-webapp-5.4.8.war webapps/ROOT.war

sudo chown -R tomcat7:tomcat7 webapps
sudo -E /etc/init.d/tomcat7 restart

echo "Successfully copied Magnolia webapps"
echo ""