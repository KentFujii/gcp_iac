#!/bin/bash
cd `dirname $0`

# create image
# (
#   cd packer
#   packer build app.json
# )

# orchestrate image
(
  cd terraform
  terraform init
  terraform apply -auto-approve
)
# docker run -p 8080:8080 -it gcp_iac_vm_app /bin/bash -c "cd /app && python app.py"
# docker run --name mysql -e MYSQL_ROOT_PASSWORD=mysql -d -p 3306:3306 mysql
