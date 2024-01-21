# pomodoro

## 開発関係者向け
### 環境構築手順  
1. clone後、```docker-compose up```
1. PHPのコンテナに入り、```sh startup-php-container.sh```  
    コンテナ名は```docker ps -a```で確認する。```docker exec -it {コンテナ名} bash```で入る。  
    （他PJとの名称被りを避けるため名前を指定していない）
1. localhost:8000でLaravel  
   localhost:8080でphpMyAdminが起動することを確認

以上