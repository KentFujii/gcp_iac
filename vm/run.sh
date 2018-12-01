#!/bin/bash
cd `dirname $0`
packer build packer/db.json
# docker run -p 8080:8080 -it gcp_iac_vm_app /bin/bash -c "cd /app && python app.py"
