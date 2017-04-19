FROM clarencep/php7

RUN apt-get update -y \
    && apt-get install -y curl \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod a+x /usr/local/bin/composer

CMD php -v && composer -V
