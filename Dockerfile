FROM php:8.1-apache

COPY ./apache /etc/apache2/sites-enabled

COPY ./glpi /var/www/html
    
COPY ./php/php.ini /usr/local/etc/php/php.ini

RUN apt-get update && \
    apt-get install -y \
        sendmail libpng-dev libldap2-dev zlib1g-dev libicu-dev libzip-dev libbz2-dev

RUN docker-php-ext-install mysqli

RUN docker-php-ext-install gd

RUN docker-php-ext-install intl

RUN docker-php-ext-install exif

RUN docker-php-ext-install ldap

RUN docker-php-ext-install zip

RUN docker-php-ext-install bz2

RUN docker-php-ext-install opcache

RUN useradd -ms /bin/bash admin

RUN chown -R admin:admin /var/www/html

USER admin

VOLUME [/var/www/html]

EXPOSE 80/tcp