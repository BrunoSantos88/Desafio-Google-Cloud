resource "google_compute_network_peering" "frontend-peering" {
  name         = "front-backend"
  network      = google_compute_network.backend-vpc.id
  peer_network = google_compute_network.backend-vpc.id
}

resource "google_compute_network_peering" "backend-peering" {
  name         = "backend-frontend"
  network      = google_compute_network.backend-vpc.id
  peer_network = google_compute_network.backend-vpc.id
}
