#!/bin/bash
cd `dirname $0`

# create image
(
  cd packer
  packer build -var-file=secret.json app.json
)

# orchestrate image
(
  cd terraform
  terraform init
  terraform apply -auto-approve
)
