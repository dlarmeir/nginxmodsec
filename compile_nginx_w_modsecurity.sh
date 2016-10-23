#!/bin/bash

##############################
# Dustin Larmeir 10/23/2016  #
# Nginx w/Mod_Security Build #
#   The Ubuntu Method        #
##############################

# Grab Buildtools and Deps 
echo "********Installing Tools and Dependencies********"
#sleep 2
#apt-get install git build-essential libpcre3 libpcre3-dev libssl-dev libtool autoconf apache2-dev libxml2-dev libcurl4-openssl-dev

# Add The Official Nginx PPA repo with build sources
#add-apt-repository ppa:nginx/stable -y
#echo "deb-src http://ppa.launchpad.net/nginx/stable/ubuntu xenial main" >>/etc/apt/sources.list.d/nginx-ubuntu-stable-xenial.list
#apt-get update

# grab build deps and source code
#cd /usr/src/
#apt-get build-dep nginx -y
#apt-get source nginx

# Fetch Mod_Security Source
#echo "********Fetching Mod_security Source Code********"
#sleep 2
#cd /usr/src/nginx-1.10.1/debian/modules
#git clone https://github.com/SpiderLabs/ModSecurity.git
#cd /usr/src/nginx-1.10.1/debian/modules/ModSecurity/

# Build ModSecurity stand alone module
echo "********Compiling Mod_Security Source Code********"
#sleep 2
#./autogen.sh
#./configure --enable-standalone-module
#make

# Compile Nginx w/Mod_Security module
sed -i '105i\\ 			--add-module=$(MODULESDIR)/ModSecurity/nginx \\' /usr/src/nginx-1.10.1/debian/rules

# Build Nginx

echo "********Build Complete - Email dustin@larmeir.com if you encounter issues********"

