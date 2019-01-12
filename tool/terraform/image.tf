resource "docker_image" "db" {
  name = "mysql:5.6"
  keep_locally = true
}
