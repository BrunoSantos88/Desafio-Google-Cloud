resource "google_compute_instance" "monitoramento" {
  name         = "monitoramento-server"
  machine_type = "e2-standard-4"
  zone         = "southamerica-east1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-pro-1804-bionic-v20221006"
      size  = 50
      type  = "pd-ssd"
    }
  }

  network_interface {
  # A default network is created for all GCP projects
  network = "default"
  access_config {
    
  }
}
    metadata_startup_script = "${file("./servidorweb.sh")}" 
  
}