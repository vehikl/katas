FROM php:7-fpm-alpine

# Install php deps
RUN apk add --no-cache $PHPIZE_DEPS

# Install xdebug
RUN pecl install xdebug

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
