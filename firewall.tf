resource "google_compute_firewall" "frontend" {
  name    = "moninoramento-firewall"
  network = google_compute_network.frontend-vpc.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80","8080","443"]
  }

  source_tags   = ["frontend"]
  source_ranges = ["0.0.0.0/0"]

}