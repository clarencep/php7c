FROM ubuntu

RUN apt-get update \
    && apt-get install -y python python-software-properties software-properties-common curl \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php7.1 php7.1-{fpm,curl,gd,mbstring,opcache} \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod a+x /usr/local/bin/composer

CMD php -v && composer 
