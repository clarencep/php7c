FROM ubuntu

RUN apt-get update \
    && apt-get install -y python python-software-properties software-properties-common curl \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y --allow-unauthenticated php7.1 php7.1-fpm php7.1-curl php7.1-gd php7.1-mbstring php7.1-opcache  \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod a+x /usr/local/bin/composer

CMD php -v && composer 
