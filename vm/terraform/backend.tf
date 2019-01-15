terraform {
  backend "gcs" {
    bucket  = "iac-terraform"
    prefix  = "vm"
  }
}
