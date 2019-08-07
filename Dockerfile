FROM php:7.3.6-fpm

ENV PHP_REDIS_VERSION 5.0.0

# 扩展安装
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && pecl install redis-$PHP_REDIS_VERSION \
    && docker-php-ext-enable redis \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install opcache \
    # php.ini 文件
    && mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
    
EXPOSE 9000
