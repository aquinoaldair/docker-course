FROM php:7.4.33-fpm-alpine

#directorio donde se trabajará
RUN mkdir -p /var/www/html

#configurar el sistema para que el sistema de ficheros este alineado con el usuario y grupo del contenedor de php
# cd /usr/local/etc/php-fpm.d
#  cat www.conf
# line user = www-data | group = www-data
RUN apk --no-cache add shadow && usermod -u 1000 www-data

#instala dependencias faltantes para laravel
RUN docker-php-ext-install pdo pdo_mysql

#copia del servicio de composer y lo usa aqui
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

