# Install PHP and Composer:
# (Includes PHP extensions required by Craft CMS)
PHP_VERSION=7.1
apt-add-repository ppa:ondrej/php
apt-get update

apt-get -y install php${PHP_VERSION}
apt-get -y install php${PHP_VERSION}-curl
apt-get -y install php${PHP_VERSION}-mbstring
apt-get -y install php${PHP_VERSION}-xml
apt-get -y install php${PHP_VERSION}-zip

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

