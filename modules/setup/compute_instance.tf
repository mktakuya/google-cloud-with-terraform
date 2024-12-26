resource "google_compute_instance" "sample_instance" {
  name = "sample-instance"
  machine_type = "f1-micro"
  zone = "asia-northeast1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}
