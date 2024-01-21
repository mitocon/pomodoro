# 初回にPHPコンテナに入って一度だけ実行してください
### docker-compose up
### docker ps -a → PHP {container name}
### docker exec -it {container name} bash
### sh startup-php-container.sh

cp .env.example .env
composer install
touch /var/www/my-laravel-project/storage/logs/laravel.log
chmod -R 777 /var/www/my-laravel-project/storage
chmod -R 777 /var/www/my-laravel-project/bootstrap
php artisan key:generate
php artisan migrate
php artisan db:seed