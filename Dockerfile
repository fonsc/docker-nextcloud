FROM nextcloud:30.0.6-apache

# https://github.com/nextcloud/docker/blob/4daafc8d2092b4187311a2a62d38eca37d58616f/.examples/README.md?plain=1#L47
RUN apt-get update && apt-get install -y smbclient libsmbclient-dev
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
