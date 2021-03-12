FROM php:7.2.32-fpm

RUN apt-get update && apt-get install -y \
        curl \
        git \
        zip \
        unzip
#    && docker-php-ext-install mysqli pdo pdo_mysql gd zip bcmath intl soap pdo_pgsql gmp bz2

COPY ./conf/php.ini /usr/local/etc/php/
COPY ./conf/php-fpm.conf /usr/local/etc/php-fpm.d/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#RUN usermod -u 1000 www-data \
#  && groupmod -g 1000 www-data
#
#RUN chown -R www-data:www-data /var/www
#RUN chmod -R 774 /var/www
#
#USER www-data

WORKDIR /var/www

CMD ["php-fpm", "--allow-to-run-as-root"]
