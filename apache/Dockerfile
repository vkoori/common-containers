######################################
ARG IMAGE

FROM ${IMAGE:-php:8.2-apache}

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y git unzip zip

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions bcmath bz2 calendar dba enchant exif gettext gmp imap intl ldap mongodb mbstring mysqli opcache pdo_mysql pdo_pgsql pdo_sqlite pgsql pspell soap sockets sysvmsg sysvsem sysvshm tidy xmlrpc xsl zip shmop exif pcntl timezonedb redis gd csv @composer opentelemetry
    # ioncube_loader

