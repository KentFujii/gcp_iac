#!/bin/bash
cd `dirname $0`
packer build packer/web.json
# packer build packer/app.json
# packer build packer/db.json
# docker run -p 8080:8080 -it gcp_iac_vm /bin/bash -c "cd /app && python app.py"
# docker run -p 80:80 -it gcp_iac_vm_web nginx
