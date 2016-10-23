#!/bin/bash

##############################
# Dustin Larmeir 10/23/2016  #
# Nginx w/Mod_Security Build #
##############################

#Grab Buildtools and Deps 
apt-get install git build-essential libpcre3 libpcre3-dev libssl-dev libtool autoconf apache2-dev libxml2-dev libcurl4-openssl-dev

#Fetch Nginx Source
cd /usr/src
git clone https://github.com/SpiderLabs/ModSecurity.git
cd /usr/src/ModSecurity/

# Build ModSecurity stand alone module
./autogen.sh
./configure --enable-standalone-module
make


