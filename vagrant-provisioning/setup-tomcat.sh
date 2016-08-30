#!/bin/sh -e

# Configure Tomcat
sudo tr -d '\r' < /vagrant-data/tomcat/conf/tomcat-users.xml > /etc/tomcat7/tomcat-users.xml
sudo chown tomcat7:tomcat7 /etc/tomcat7/tomcat-users.xml

sudo tr -d '\r' < /vagrant-data/tomcat/bin/setenv.sh > /usr/share/tomcat7/bin/setenv.sh
sudo chown root:root /usr/share/tomcat7/bin/setenv.sh

# Yourkit user agent lib
sudo cp /vagrant-data/tomcat/bin/libyjpagent.so /usr/share/tomcat7/bin/libyjpagent.so

mkdir /var/lib/tomcat7/mgnl-repositories/
mkdir /var/lib/tomcat7/mgnl-repositories/author
mkdir /var/lib/tomcat7/mgnl-repositories/public
chown -R tomcat7:tomcat7 /var/lib/tomcat7/mgnl-repositories

sudo -E /etc/init.d/tomcat7 restart

echo "Successfully configured Tomcat7"
echo ""