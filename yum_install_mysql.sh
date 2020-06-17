#!/bin/bash

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum install -y mysql-server
sudo yum install -y glibc.i686
sudo yum list libstdc++*
sudo chown -R xlat:xlat /var/lib/mysql
systemctl start mysqld
systemctl status mysqld
firewall-cmd --zone=public --add-port=3306/tcp --permanent
firewall-cmd --reload
