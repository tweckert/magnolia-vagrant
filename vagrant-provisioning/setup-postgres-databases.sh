#!/bin/sh -e

sudo su - postgres -c psql < /vagrant-data/postgresql/00-fix-encoding.sql
sudo su - postgres -c psql < /vagrant-data/postgresql/05-drop-database.sql
sudo su - postgres -c psql < /vagrant-data/postgresql/06-drop-role.sql
sudo su - postgres -c psql < /vagrant-data/postgresql/10-create-roles.sql
sudo su - postgres -c psql < /vagrant-data/postgresql/20-create-db.sql
sudo su - postgres -c psql < /vagrant-data/postgresql/30-create-permissions.sql

echo "Successfully created author/public Postgres databases for Magnolia"
echo ""