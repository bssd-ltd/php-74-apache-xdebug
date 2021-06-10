FROM php:7.4-apache
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.9.8
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini
