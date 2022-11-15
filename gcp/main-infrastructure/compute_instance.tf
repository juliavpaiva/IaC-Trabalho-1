resource "google_compute_instance" "server02" {
  name         = "Server02"
  machine_type = var.google_machine_type

  boot_disk {
    initialize_params {
      image = var.google_image
    }
  }

  metadata_startup_script = file("./startup_script_server02.sh")

  network_interface {
    network = var.google_network
    access_config {
    }
  }
}

resource "google_compute_instance" "server03" {
  name         = "Server03"
  machine_type = var.google_machine_type

  boot_disk {
    initialize_params {
      image = var.google_image
    }
  }

  network_interface {
    network = var.google_network
    access_config {
    }
  }
}