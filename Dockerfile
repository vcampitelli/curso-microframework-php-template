FROM php:8.4-cli-alpine

WORKDIR /var/www/html
ENV PATH="/root/.composer/vendor/bin/:${PATH}"

COPY --from=composer /usr/bin/composer /usr/local/bin/composer
COPY ["docker-php-entrypoint", "/usr/local/bin/docker-php-entrypoint"]

# Dependências
RUN apk --no-cache add --virtual build-deps $PHPIZE_DEPS linux-headers && \
    pecl install xdebug && \
    docker-php-ext-install pdo pdo_mysql && \
    docker-php-ext-enable xdebug && \
    apk del --no-cache build-deps

# Bibliotecas
RUN composer global config minimum-stability dev && \
    composer global require "squizlabs/php_codesniffer:^3.13" "phpmd/phpmd:3.x-dev" "phpstan/phpstan:^2.1"

EXPOSE 9000
ENTRYPOINT ["/usr/local/bin/docker-php-entrypoint"]

CMD ["php", "-S", "0.0.0.0:9000", "-t", "public/"]
