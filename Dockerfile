FROM php:8.2-apache

# Instalar dependências e o Xdebug
RUN apt-get update && apt-get install -y \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Copiar configuração personalizada do Xdebug (opcional)
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY display-errors.ini /usr/local/etc/php/conf.d/display-errors.ini

# Habilitar o mod_rewrite
RUN a2enmod rewrite

# Comando para iniciar o Apache
CMD ["apache2-foreground"]
