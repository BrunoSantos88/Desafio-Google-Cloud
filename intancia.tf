resource "google_compute_instance" "ServidorWeb" {
  name         = "ServidorWeb"
  machine_type = "e2-standard-4"
  zone         = "us-central1"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20211103"
      size  = 50
      type  = "pd-ssd"
    }
  }

  network_interface {
  # A default network is created for all GCP projects
  network = "rede-america-norte"
  access_config {
    
  }
}
    metadata_startup_script = "${file("./servidorweb.sh")}" 
  
}