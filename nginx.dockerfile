#decimos que vamos a utilizar la imagen de nignx
FROM nginx:stable-alpine

#remplazamos el archivo de configuración que trae por defecto nginx
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

#permitimos que apache pueda incluir mas configuraciones
RUN sed -i 's,#Include conf/extra/httpd-default.conf, Include conf/extra/httpd-default.conf, g' /usr/local/apache2/conf/httpd.conf

#nos aseguramos crear una carpeta en esa ruta a traves de mkdir para crear y -p para crear todas las carpetas
RUN mkdir -p /var/www/html

