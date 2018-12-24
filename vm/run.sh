#!/bin/bash
cd `dirname $0`

(
  cd packer
  packer build -var-file=dockerhub_secret.json app.json
)

(
  cd terraform
  terraform init
  terraform apply -auto-approve
)
