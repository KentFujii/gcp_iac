# gcp_iac

[プログラマのためのGoogle Cloud Platform入門](http://amzn.asia/d/iL2s3mw)をIaCの文脈で動かすリポジトリです

## getting started

```
Ansible
Testinfra
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

- ansible
  - packer内部で流されるansibleを管理する
- testinfra
  - packer内部で流されるansibleをテストする
- packer
  - ansibleを元にDockerイメージを生成する
- terraform
  - packerで生成したDockerイメージにterraformを流してローカルにアプリケーションを立てる

### network

GCPにおけるVM/LB/RDB/Storageのサービスとネットワークを管理する

## メモ

[Docker内でAnsible勉強](https://github.com/KentFujii/docker-ansible-practice)

[SSH デーモン用サービスの Docker化](http://docs.docker.jp/engine/examples/running_ssh_service.html)

[SSHで接続可能なDocker用のCentOSイメージをPackerで生成する](https://qiita.com/ikuyamada/items/9cce2fa28b17c8d794e3)

[testinfra – インフラストラクチャをテストする](https://githubja.com/philpep/testinfra)

[Packerを使ってDockerのイメージを作成する](https://qiita.com/hirohero/items/9d306c0ff6b2b6a58f7a)

[Testing Ansible Role with Molecule, Docker, Testinfra & Goss](https://medium.com/@chaks/testing-ansible-role-with-molecule-docker-testinfra-goss-part-1-c0277b748b63)

[dockerでmysqlを使う](https://qiita.com/astrsk_hori/items/e3d6c237d68be1a6f548)
