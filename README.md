# nginxmodsec 
![picture alt](https://www.larmeir.com/wp-content/uploads/2016/08/logo3sm.png
 "")

## Synopsis

This GIT repository contains simple BASH scripts that I've written to automatically deploy Nginx installations with Mod_Security support.
There are two different scripts with separate installation methodologies:

nginxmodsec.sh  | nginxmodsecleg.sh
----------------|-------------------
.deb packages   | source code only
minimal effort  | needs extra work
startup scripts | no startup scripts
Ubuntu Stable   | Nginx Stable
Production	| Edgy

I'm currently writing supporting scripts that will also include the mod_security CRS as a baseline for policy.

## Installation 

``# git clone https://github.com/dlarmeir/nginxmodsec.git``
  
``# sudo su``
  
``# chmod +x nginxmodsec.sh``
  
``# sh nginxmodsec.sh``

## Contributors

I'm currently the only contributor to this project but would welcome any collaboration on it. If you're interested in joining the project please email me at dustin@larmeir.com

