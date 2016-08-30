#!/bin/sh -e

# NB: this script MUST be executed BEFORE installing Postgres!!!
# Fix for Postgres error: 
# ERROR: encoding "UTF8" does not match locale "en_US"
# These commands are specific to Ubuntu

sudo locale-gen en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8

sudo locale-gen de_DE.UTF-8
sudo update-locale LANG=de_DE.UTF-8

sudo loadkeys de

echo "Successfully setup locales"
echo ""