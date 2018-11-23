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
