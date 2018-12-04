#!/bin/bash
cd `dirname $0`

# prepare registory
docker pull registry
docker run -d -p 5000:5000 registry


# create image
(
  cd packer
  packer build app.json
)

# push image
docker push localhost:5000/gcp_iac_vm_app

# orchestrate image
# (
#   cd terraform
#   terraform init
#   terraform apply -auto-approve
# )
# docker run -p 8080:8080 -it gcp_iac_vm_app /bin/bash -c "cd /app && python app.py"
# docker run --name mysql -e MYSQL_ROOT_PASSWORD=mysql -d -p 3306:3306 mysql
