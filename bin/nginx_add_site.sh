#!/bin/bash
clear

#Enter details
appFolder=""
appDomain=""

echo "Enter application folder (Ex.: /home/vlad/site_folder/public_html):"
read appFolder
echo "Enter application domain (Ex.: domain.com):"
read appDomain

#Copy template configuration file
cp template.txt $appDomain
sudo chown vlad:vlad $appDomain 
sudo chmod 777 $appDomain

eval "echo \"$(< $appDomain)\"" > $appDomain

#Save file

#Save ln to sites-enabled

#Reload nginx

#Todo
# choose appType = nodejs / php
#Test
echo "Your appFolder: $appFolder and appDomain: $appDomain" 

