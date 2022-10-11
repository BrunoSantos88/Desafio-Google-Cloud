resource "google_compute_network" "vpc_network" {
  project                 = "bootcamp-363315"
  name                    = "vpc-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}


resource "google_compute_subnetwork" "network-with-private-ip-ranges" {
  name          = "rede-subnetwork"
  ip_cidr_range = "192.10.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}
