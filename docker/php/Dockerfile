FROM php:7.2.32-fpm

RUN apt-get update && apt-get install -y \
        curl \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        apt-transport-https \
        git \
        gnupg \
        zlib1g-dev \
        libicu-dev \
        libxml2-dev \
        libpq-dev \
        libgmp-dev \
        libbz2-dev \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure intl \
    && docker-php-ext-install mysqli pdo pdo_mysql gd zip bcmath intl soap pdo_pgsql gmp bz2

COPY ./conf/php.ini /usr/local/etc/php/
COPY ./conf/php-fpm.conf /usr/local/etc/php-fpm.d/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www

USER www-data

WORKDIR /var/www

CMD ["php-fpm", "--allow-to-run-as-root"]
