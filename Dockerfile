FROM php:7.4-fpm-alpine
RUN apk --no-cache add nodejs npm \
    && docker-php-ext-install pdo pdo_mysql
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
WORKDIR /var/www/html
EXPOSE 9000
CMD ["php-fpm"]

# # Arguments defined in docker-compose.yml
# ARG uid
# ARG gid

# RUN userdel -f www-data &&\
#     if getent group www-data ; then groupdel www-data; fi &&\
#     groupadd -g ${uid} www-data &&\
#     useradd -l -u ${gid} -g www-data www-data &&\
#     install -d -m 0755 -o www-data -g www-data /var/www

# # Install system dependencies
# RUN apt-get update && apt-get install -y \
#     zip \
#     unzip \
#     git \
#     curl \
#     libpng-dev \
#     libonig-dev \
#     libxml2-dev \
#     libzip-dev \
#     libfreetype6-dev \
#     libjpeg62-turbo-dev \
#     libpng-dev
# # Clear cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# # Install PHP extensions
# RUN docker-php-ext-install \
#     pdo \
#     pdo_mysql \
#     zip \
#     && docker-php-ext-install zip \
#     && docker-php-ext-install -j$(nproc) gd \
#     && docker-php-ext-configure zip \
#     && docker-php-ext-configure gd --with-freetype --with-jpeg \
#     && docker-php-ext-enable xdebug \
#     && mbstring exif pcntl bcmath \
#     && pecl install xdebug

# # Development
# RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

# COPY ./conf/php-fpm/www.conf /usr/local/etc/php-fpm.d/www.conf

# # Get latest Composer
# COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# # Install NodeJs
# RUN apt-get update && \
#     apt-get install -y wget && \
#     apt-get install -y gnupg2 && \
#     wget -qO- https://deb.nodesource.com/setup_14.x | bash - && \
#     apt-get install -y build-essential nodejs
# # End Install

# # # Create system user to run Composer and Artisan Commands

# # # Set working directory
# WORKDIR /var/www/html

# # # Expose port 9000 and start php-fpm server
# EXPOSE 9000
# CMD ["php-fpm"]