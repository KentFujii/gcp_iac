#!/bin/bash
cd `dirname $0`

GOOGLE_APPLICATION_CREDENTIALS=$(pwd)/account.json
export GOOGLE_APPLICATION_CREDENTIALS

# (
#   cd packer
#   packer build -var-file=secret.json -force app.json
# )

(
  cd terraform
  terraform init
  terraform show
  terraform plan
  # terraform apply -auto-approve -target=google_compute_instance.vm_instance
  # terraform destroy -auto-approve
)
