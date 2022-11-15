resource "google_compute_instance" "server02" {
  name         = "server02-${var.aws_env}"
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

resource "google_compute_instance" "server03" {
  name         = "server03-${var.aws_env}"
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