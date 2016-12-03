# nginxmodsec BETA
![picture alt](https://www.larmeir.com/wp-content/uploads/2016/08/logo3sm.png
 "")

## Synopsis

This GIT repository contains simple BASH scripts that I've written to automatically deploy Nginx installations with Mod_Security support.

### nginxmodsec.sh (Recommended)
This is the recommended for Production deployments and is built specifically to support Ubuntu 16.04 and it's native packaging tools.

### nginxmodsecleg.sh (Not Recommended)
This is a rougher approach that builds only off of the source and is meant to be a template for highly customized deployments.

nginxmodsec.sh  | nginxmodsecleg.sh
----------------|-------------------
.deb packages   | source code only
minimal effort  | needs extra work
startup scripts | no startup scripts
Ubuntu Stable   | Nginx Stable
Production	| Edgy
CRS Included	| No CRS Included

The Mod_security CRS is included with nginxmodsec.sh but must be enabled on a virtual host. 

i.e.

 ``ModSecurityEnabled on;``

 ``ModSecurityConfig modsecurity.conf;``

I'll provide a tutorial on finish up the installation soon but there are plenty of good articles out there.

## Installation 

``# git clone https://github.com/dlarmeir/nginxmodsec.git``
  
``# sudo su``
  
``# chmod +x nginxmodsec.sh``
  
``# sh nginxmodsec.sh``

## Contributors

I'm currently the only contributor to this project but would welcome any collaboration on it. If you're interested in joining the project please email me at dustin@larmeir.com

