provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "app" {
  image = "gcp_iac_vm_app"
  name  = "app"
  hostname = "app"
  ports {
    internal = 8080
    external = 8080
  }
  command = ["cd /app && python app.py"]
}

resource "docker_container" "mysql" {
  image = "${docker_image.mysql.latest}"
  name  = "db"
  hostname = "db"
  env = ["MYSQL_ROOT_PASSWORD=password"]
  ports {
    internal = 3306
    external = 3306
  }
  volumes = {
    volume_name = "${path.module}/../db/"
    container_path = "/docker-entrypoint-initdb.d/"
  }
}

resource "docker_image" "mysql" {
  name = "mysql:latest"
}
