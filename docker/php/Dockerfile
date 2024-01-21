FROM php:8.1-fpm

# Laravelの要件に必要なPHP拡張機能をインストール
RUN docker-php-ext-install pdo pdo_mysql

# Composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Laravelアプリケーションのコードをコンテナ内にコピー
WORKDIR /var/www
COPY my-laravel-project /var/www

# 権限設定
RUN chown -R www-data:www-data /var/www

# PHP-FPMを実行
CMD ["php-fpm"]

