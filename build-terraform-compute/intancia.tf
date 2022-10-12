resource "google_compute_instance" "servidorweb" {
  name         = "frontend"
  machine_type = "e2-standard-4"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20221005"
      size  = 50
      type  = "pd-ssd"
    }
  }

  network_interface {
    network    = "frontend-infraestruitura"
    subnetwork = "frontend-vpc-subnetwork"

    access_config {
    }
  }
    

  metadata_startup_script = file("./servidorweb.sh")

}