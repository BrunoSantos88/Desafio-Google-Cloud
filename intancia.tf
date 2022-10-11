terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "barbero-devops-iac"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "ServidorWeb" {
  name         = "frontend"
  machine_type = "e2-standard-4"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20211103"
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

}