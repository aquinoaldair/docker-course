#decimos que vamos a utilizar la imagen de apache
FROM httpd:alpine

ADD ./apache/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

#nos aseguramos crear una carpeta en esa ruta a traves de mkdir para crear y -p para crear todas las carpetas
RUN mkdir -p /var/www/html

