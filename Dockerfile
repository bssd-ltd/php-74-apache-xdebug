FROM php:7.4-apache
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y autoremove && apt-get -y autoclean
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN pecl install xdebug-2.9.8
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini
