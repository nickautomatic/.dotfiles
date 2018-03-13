# Install PHP:
# (Includes PHP extensions required by Craft CMS)
PHP_VERSION=7.1
sudo apt-add-repository ppa:ondrej/php
sudo apt-get update

sudo apt-get -y install imagemagick
sudo apt-get -y install php-imagick
sudo apt-get -y install php${PHP_VERSION}
sudo apt-get -y install php${PHP_VERSION}-curl
sudo apt-get -y install php${PHP_VERSION}-intl
sudo apt-get -y install php${PHP_VERSION}-mbstring
sudo apt-get -y install php${PHP_VERSION}-mysql
sudo apt-get -y install php${PHP_VERSION}-xml
sudo apt-get -y install php${PHP_VERSION}-zip

