#!/bin/bash
cd `dirname $0`

# GOOGLE_APPLICATION_CREDENTIALS=$(pwd)/account.json
# export GOOGLE_APPLICATION_CREDENTIALS

# (
#   cd packer
#   packer build -var-file=secret.json -force app.json
# )

GOOGLE_CLOUD_KEYFILE_JSON=`cat account.json`
export GOOGLE_CLOUD_KEYFILE_JSON

(
  cd terraform
  terraform init
  terraform destroy -auto-approve
)
