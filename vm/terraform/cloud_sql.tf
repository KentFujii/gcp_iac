resource "google_sql_database_instance" "master" {
  database_version = "MYSQL_5_7"
  region = "asia-northeast1"

  settings {
    tier = "db-n1-standard-1"
    location_preference {
      zone = "asia-northeast1-a"
    }
  }
}

resource "google_sql_user" "users" {
  name     = "iac-vm"
  instance = "${google_sql_database_instance.master.name}"
  password = "password"
}
