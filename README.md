# mlops_tutorial

## 環境構築手順(Dockerインストール後)

1. このレポジトリをクローン
git clone https://github.com/Kaggle-runa/mlops_tutorial.git

2. コンテナを起動
docker-compose up -d もしくは docker compose up -d

3. dbの準備
docker exec -it pyspark_mlops /bin/bash

mysql -h db_mysql_mlops -uroot -proot
source 2.3.0_utf-8.sql

4. pysparkの確認
ターミナルでpysparkを実行


### 各サーバーのURL
作業用コンテナへの接続
docker exec -it pyspark_mlops /bin/bash

### mysql への接続
mysql -h db_mysql_mlops -uroot -proot

### UIの確認
買い上げ完了画面
http://localhost:3001/done/?id=1

広告画面
http://localhost:3001/display_user_base_data/?id=1
