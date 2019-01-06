#!/bin/bash
cd `dirname $0`

(
  cd packer
  packer build -var-file=dockerhub_secret.json app.json
)

APP_IMAGE_ID=`docker image ls --no-trunc --filter=reference=kentfujii/gcp_iac_vm_app:latest --format "{{.ID}}"`

(
  cd terraform
  terraform init
  terraform apply -var app_image_id=$APP_IMAGE_ID -auto-approve
)
