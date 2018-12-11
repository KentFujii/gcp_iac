#!/bin/bash
cd `dirname $0`

# create image
(
  cd packer
  packer build -var-file=secret.json app.json
)
