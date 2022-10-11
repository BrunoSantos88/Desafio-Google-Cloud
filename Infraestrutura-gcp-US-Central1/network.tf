provider "google" {
  project = "bootcamp-363315"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_subnetwork" "network-with-private-ip-ranges" {
  name          = "rede-subnetwork"
  ip_cidr_range = "192.10.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.rede-america-norte.id
}
  

resource "google_compute_network" "rede-america-norte" {
  name                    = "vpc-america-norte"
  auto_create_subnetworks = false
}