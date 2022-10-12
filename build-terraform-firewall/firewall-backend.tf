resource "google_compute_firewall" "frontend" {
  project = "bootcamp-363315"
  name    = "frontend-firewall"
  network = "backend-infra-rede"
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80","3306","443"]
  }

  source_tags   = ["backend"]
  source_ranges = ["0.0.0.0/0"]

}