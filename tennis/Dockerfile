FROM php:7-fpm-alpine

# Install xdebug
RUN apk add --no-cache php7-pecl-xdebug

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --version=1.10.19 --install-dir=/usr/local/bin --filename=composer
