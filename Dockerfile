FROM clarencep/php7:7.1

RUN DEBIAN_FRONTEND="noninteractive" \
    && apt-get update -y \
    && apt-get install -y curl zip \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod a+x /usr/local/bin/composer \
    && apt-get clean && apt-get autoclean && apt-get remove -y 

CMD php -v && composer -V
