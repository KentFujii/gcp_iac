provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "mysql" {
  name = "mysql:latest"
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
