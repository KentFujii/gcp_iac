resource "google_compute_instance" "vm_instance" {
  name         = "iac-vm"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "gcp-iac"
    }
  }

  network_interface {
    network       = "default"
    access_config = {
    }
  }
}
