#!/bin/bash
cd `dirname $0`

# (
#   cd packer
#   packer build -var-file=gcp_secret.json -force app.json
# )

(
  cd terraform
  terraform init
  terraform apply -auto-approve
)
