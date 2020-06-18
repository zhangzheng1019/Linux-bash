#!/bin/bash

 sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

 sudo yum install -y certbot python2-certbot-nginx

 sudo certbot certonly --nginx

#  echo "0 0,12 * * * root python -c 'import random; import time; time.sleep(random.random() * 3600)' && certbot renew -q" | sudo tee -a /etc/crontab > /dev/null