#!/bin/bash
# Cloud9-PHP7-Upgrade
# 
# Created by Ian Manseau
# Donations Greatly Appreciated
# Bitcoin:     3Hz1tsvPgfbkFowC91zmwi1ajnJaWzRu61
# Litecoin:    MBVV27GzkayjoavX629go1pxMa2cVeUbpr
# Ether:       0x47B40D2eDbEb33B19182709fE20DdcCCB0c18622
# 
# Cloud9-PHP7-Upgrade is a bash script for a quick and painless upgrade to 
# PHP 7 for cloud9's development platform
# Copyright (C) 2017  Ian Corbitt Manseau
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

clear

read -p "Do you want to upgrade to PHP 7? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo add-apt-repository ppa:ondrej/php
    sudo apt-get update
    sudo apt-get install libapache2-mod-php7.0 -y
    sudo a2dismod php5
    sudo a2enmod php7.0
    sudo apt-get install php7.0-dom -y
    sudo apt-get install php7.0-mbstring -y
    sudo apt-get install php7.0-zip -y
    sudo apt-get install php7.0-mysql -y
    sudo apt-get install php7.0-curl -y
    sudo apt-get install php7.0-gd php-imagick php7.0-intl php7.0-mcrypt php7.0-json php7.0-opcache php7.0-bcmath php7.0-soap php7.0-xml -y
    sudo service apache2 restart
    echo "Congragulations you have upgraded your dev box to PHP 7"
fi
