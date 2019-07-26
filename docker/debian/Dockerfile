FROM debian:buster

# Switch to root user
USER root

# Update repositories and install required package to start
RUN apt-get update -y && apt-get upgrade -y && apt dist-upgrade -y

# PHP
RUN apt-get -y install php libapache2-mod-php php-xml php-curl php-memcached php-intl php-mysql

# Git
RUN apt-get -y install git

# Zip
RUN apt-get -y install zip

# Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /bin/composer

# APPLICATION
RUN mkdir app
COPY scripts/* /bin/ 
RUN chmod +x /bin/ws-start /bin/ws-restart /bin/ws-stop

# Logs
RUN touch /var/log/amalgam-websocket-server