resource "google_compute_firewall" "frontend" {
  name    = "frontend-firewall"
  network = "frontend-infraestruitura"
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