# magnolia-vagrant

A Vagrant file to create a VM image that runs a Magnolia webapp bundle.

- download and install Oracle VirtualBox from `https://www.virtualbox.org/`
- download a [Magnolia webapp bundle](https://documentation.magnolia-cms.com/display/DOCS/Bundles+and+webapps) and save the .war file in `vagrant-data/tomcat/webapps` (the Magnolia webapp bundles are too large to commit them in github)
- modify the Vagrant provisioning shell script `vagrant-provisioning/setup-magnolia-webapps.sh` and replace in lines 9 and 10 the name of the `.war` file with the name of your Magnolia webapp bundle
- run `vagrant up` to create/start the VM image (inside the root directory of this project, just as for all Vagrant commands regarding the VM image of this project)
- open `http://localhost:8082/magnoliaAuthor` when the VM image is up and running
- follow the instructions on the Magnolia installation screen
- open `http://localhost:8082/magnoliaVagrant` to open Lambda Probe. The username and password are configured in `vagrant-data/tomcat/conf/tomcat-users.xml`
- open a SSH shell to `127.0.0.1:2222` with user `vagrant` and password `vagrant` to log into the VM image. Watch out for startup messages such as `Fixed port collision for 22 => 2222. Now on port 2200` if you have port collisions
- Run `sudo -E /etc/init.d/tomcat7 restart` to restart respectively start/stop Tomcat when logged into the VM image
- run `vagrant halt` to stop the VM image
- run `vagrant destroy` to destroy and remove the VM image

The VM image is uses:

- Java 8
- Tomcat 7 (at the time of creating this Vagrant file there wasn't yet a proper Tomcat 8 distribution available)
- Postgres 9.4 
   - The Postgres database is currently unused, however SQL scripts exist in `vagrant-sql/` to setup the Postgres databases and users for Magnolia
   - replace the Magnolia webapp in `vagrant-data/tomcat/webapps/` with a customized Magnolia bundle that uses Postgres as the database for the Jackrabbit repository. See also: [How to install PostgreSQL as the persistence provider for Magnolia](https://wiki.magnolia-cms.com/display/WIKI/How+to+install+PostgreSQL+as+the+persistence+provider+for+Magnolia) in the Magnolia wiki
   - the Postgres databases for Magnolia are setup with `de_DE.utf8` character encoding
   
This Vagrant setup also comes with:

- a set of Ant tasks in `vagrant-ant-tasks.xml` to update the VM image with custom JARs and WARs as needed during development, please refer to this Ant file for further instructions on how to use these tasks in your project
- the [Yourkit](https://www.yourkit.com/) shared object library to profile the Magnolia webapp