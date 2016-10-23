#!/bin/bash

##############################
# Dustin Larmeir 10/23/2016  #
# Nginx w/Mod_Security Build #
##############################

# Grab Buildtools and Deps 
apt-get install git build-essential libpcre3 libpcre3-dev libssl-dev libtool autoconf apache2-dev libxml2-dev libcurl4-openssl-dev

# Fetch Mod_Security Source
cd /usr/src
git clone https://github.com/SpiderLabs/ModSecurity.git
cd /usr/src/ModSecurity/

# Build ModSecurity stand alone module
./autogen.sh
./configure --enable-standalone-module
make

# Fetch Nginx Source
cd /usr/src
wget http://nginx.org/download/nginx-1.8.1.tar.gz
tar -xvzf nginx-1.8.1.tar.gz
cd /usr/src/nginx-1.8.1/

# Build Nginx
./configure \
   --user=www-data \
   --group=www-data \
   --with-pcre-jit \
   --with-debug \
   --with-ipv6 \
   --with-http_ssl_module \
   --add-module=/usr/src/ModSecurity/nginx/modsecurity
make
make install

