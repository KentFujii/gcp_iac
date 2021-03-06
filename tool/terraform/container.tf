resource "docker_container" "gcp_iac_vm_db" {
  image = "${docker_image.db.latest}"
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
  networks_advanced = {
    name = "${docker_network.gcp_iac_vm_network.name}"
  }
}

resource "docker_container" "gcp_iac_vm_app" {
  image = "${var.app_image_id}"
  name  = "app"
  hostname = "app"
  ports {
    internal = 8080
    external = 8080
  }
  networks_advanced = {
    name = "${docker_network.gcp_iac_vm_network.name}"
  }
  command = ["bash", "-c", "cd /app && python app.py"]
  restart = "on-failure"
}
