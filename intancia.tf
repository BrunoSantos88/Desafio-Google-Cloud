provider "google" {
  project = "bootcamp-363315"
  region  = "us-central1"
  zone    = "us-central1-c"
}


resource "google_compute_instance" "ServidorWeb" {
  name         = "ServidorWeb"
  machine_type = "e2-standard-4"
  zone         = "southamerica-east1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20211103"
      size  = 50
      type  = "pd-ssd"
    }
  }

  network_interface {
  # A default network is created for all GCP projects
  network = "rede-subnetwork"
  access_config {
    
  }
}
    metadata_startup_script = "${file("./ShellScript/servidorweb.sh")}" 
  
}