# gcp_iac

[プログラマのためのGoogle Cloud Platform入門](http://amzn.asia/d/iL2s3mw)をIaCの文脈で動かすリポジトリです

## getting started

```
Packer
Terraform
```

を手元にインストールしてください

## index

- [ ] vm: Webアプリケーション実行基盤を構築しよう
- [ ] network: 止まらないWebアプリケーション基盤を構築しよう
- [ ] container: コンテナ実行環境でマイクロサービスアーキテクチャを体験しよう
- [ ] ml: 機械学習を用いたGAEアプリケーション

### vm

IaCツールを使ってVMを管理する

- packer
  - Dockerイメージを生成する
- terraform
  - packerで生成したイメージにterraformを流してローカルにアプリケーションを立てる

### network

GCPにおけるVM/LB/RDB/Storageのサービスとネットワークを管理する

- packer
  - GCEイメージを生成する
- terraform
  - packerで生成したイメージにterraformを流してGCPにアプリケーションを立てる
