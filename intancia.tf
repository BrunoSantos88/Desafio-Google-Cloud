terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }

provider "google" {
  project = "bootcamp-363315"
  region  = "us-central1"
  zone    = "us-central1-c"
}


resource "google_compute_instance" "ServidorWeb" {
  name         = "frontend"
  machine_type = "f1-micro"
  tags = ["prod"]


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
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