#!/bin/bash
packer build vm.json
docker run -it gcp_fabric -p 2222:22
