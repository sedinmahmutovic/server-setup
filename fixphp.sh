#!/bin/bash

for username in /home/*; do
    account=$(basename "$username")
    home_directory="/home/$account"
    if [ -d "$home_directory" ]; then
        find "$home_directory" -type f -name ".htaccess" -exec sed -i '/AddHandler application\/x-httpd-ea-php73 .php .php7 .phtml/d' {} \;
        echo "Removed line from .htaccess files for account: $account"
    fi
done

