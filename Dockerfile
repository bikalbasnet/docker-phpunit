FROM php:7.3-cli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN apt-get update && apt-get install -y git libxml2-dev
RUN docker-php-ext-install soap pcntl
RUN pecl install xdebug-2.7.2
RUN docker-php-ext-enable xdebug
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" && \
	echo 'zend.assertions=1' >> "$PHP_INI_DIR/php.ini" && \
	echo 'assert.exception=On' >> "$PHP_INI_DIR/php.ini"
WORKDIR /usr/src/myapp

