resource "google_compute_subnetwork" "subnet-aplicaçao" {
  name          = "coneçao-app-frontend"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.network-aplicaçao.id
}

resource "google_compute_network" "network-aplicaçao" {
  project                 = "bootcamp-363315"
  name                    = "test-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}