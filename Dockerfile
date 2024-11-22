FROM php:8.2-apache
RUN apt update 
RUN apt install -y zip zlib1g-dev  libzip-dev
RUN docker-php-ext-configure zip
RUN docker-php-ext-install mysqli pdo pdo_mysql zip
RUN a2enmod headers
RUN a2enmod ssl
RUN a2enmod rewrite
RUN a2ensite default-ssl
EXPOSE 80
EXPOSE 443

