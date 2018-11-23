# gcp_iac

[プログラマのためのGoogle Cloud Platform入門](http://amzn.asia/d/iL2s3mw)をIaCの文脈で動かすリポジトリです

## getting started

```
Fabric
Ansible
Testinfra
Packer
Terraform
Docker
```

を手元にインストールしてください

## index

- [ ] vm: Webアプリケーション実行基盤を構築しよう
- [ ] network: 止まらないWebアプリケーション基盤を構築しよう
- [ ] container: コンテナ実行環境でマイクロサービスアーキテクチャを体験しよう
- [ ] ml: 機械学習を用いたGAEアプリケーション

### app

イメージからアプリケーションを立てる手法について

#### fabric

packerで生成したdockerイメージにfabricを流してローカルにアプリケーションを立てる

#### ansible

packerで生成したdockerイメージにansibleを流してローカルにアプリケーションを立てる

#### terraform

packerで生成したgceイメージにterraformを流してGCPにアプリケーションを立てる

## メモ

[SSHで接続可能なDocker用のCentOSイメージをPackerで生成する](https://qiita.com/ikuyamada/items/9cce2fa28b17c8d794e3)

[Fabricを使用してDockerイメージを生成する](https://qiita.com/ikuyamada/items/03e7677c596678d300d9)

[Packerを使ってDockerのイメージを作成する](https://qiita.com/hirohero/items/9d306c0ff6b2b6a58f7a)

    1  pwd
    2  ls
    3  cd /home
    4  ls
    5  cd kent_where_the_light_is/
    6  exit
    7  sudo apt-get update
    8  sudo apt-get -y install git python-pip python-dev python-flask python-wtforms python-arrow python-flask-sqlalchemy python-pymysql python-flaskext.wtf
    9  sudo pip install --update setuptools
   10  sudo pip install --upgrade setuptools
   11  sudo pip install --upgrade gcloud
   12  pwd
   13  git clone git@github.com:asashiho/gcp-compute-engine.git
   14  git clone https://github.com/asashiho/gcp-compute-engine
   15  ls
   16  cd gcp-compute-engine/
   17  sudo app_v1/install.sh
   18  sudo systemctl enable dengonban.service
   19  sudo systemctl start dengonban.service
   20  sudo systemctl status dengonban.service
   21  mysql -h ethereal-argon-189102:asia-northeast1:websql -u root -p
   22  apt-get install mysql-client
   23  sudo apt-get install mysql-client
   24  mysql -h ethereal-argon-189102:asia-northeast1:websql -u root -p
   25  mysql -h 35.200.116.251 -u root -p
   26  history
   27  ls
   28  cd app_v2
   29  ls
   30  vim app.py
   31  m
   32  pwd
   33  history
