#!/bin/bash
cd `dirname $0`
packer build packer/docker.json
docker run -it gcp_iac_vm -p 80:80
