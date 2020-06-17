FROM php:7.2

# add 压缩文件会自动解压
ADD ./swoole-src-4.5.2.tar.gz  .
ADD ./phpredis-5.2.2.tar.gz  .

RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install opcache \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install bcmath

RUN cd ./swoole-src-4.5.2 \
    && phpize \
    && ./configure  \
    && make \
    && make install \
    && rm ./swoole-src-4.5.2 -rf \
    && docker-php-ext-enable swoole

RUN cd ./phpredis-5.2.2 \
    && phpize \
    && ./configure  \
    && make \
    && make install \
    && rm ./phpredis-5.2.2 -rf \
    && docker-php-ext-enable redis

RUN php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod u+x /usr/local/bin/composer