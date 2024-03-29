FROM ubuntu:20.04

# ubuntu packages
RUN apt update \
    && apt install -y software-properties-common \
    && add-apt-repository ppa:ondrej/php \
    && apt install -y git wget curl \
#    && apt install -y postgresql-12 postgresql-client-12 postgresql-contrib-12 \
    && apt install sudo \
    && apt install unzip

# php install
RUN apt install php7.4 php7.4-zip php7.4-gd php7.4-pgsql php7.4-xsl php7.4-curl php7.4-mbstring php7.4-intl -y php7.4-fpm

# Symfony cli
RUN wget https://github.com/symfony/cli/releases/download/v4.25.2/symfony_linux_amd64 \
    && chmod +x symfony_linux_amd64 \
    && mv symfony_linux_amd64 /usr/local/bin/symfony

# Composer
RUN wget https://getcomposer.org/download/2.0.13/composer.phar \
    && mv composer.phar /usr/bin/composer \
    && chmod +x /usr/bin/composer

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt install nodejs

# npm
RUN npm install -g npm@7.15.0

# yarn
RUN npm install -g yarn@1.22.5