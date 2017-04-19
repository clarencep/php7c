FROM ubuntu

RUN apt-get update \
    && apt-get install -y python python-software-properties software-properties-common \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php7.1 php7.1-{fpm,curl,gd,mbstring,opcache}

CMD php -v
