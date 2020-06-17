#!/usr/bin/env bash
php artisan clear-compiled
php artisan cache:clear
php artisan route:cache
php artisan config:cache
php artisan optimize --force
composer dump-autoload --optimize
chmod -R 777 storage
chmod -R 777 bootstrap/cache