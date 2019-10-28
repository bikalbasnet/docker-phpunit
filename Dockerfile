FROM php:7.2-cli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN apt-get update && apt-get install -y git

WORKDIR /usr/src/myapp

