provider "google" {
  project = "bootcamp-363315"
  region  = "us-central1"
}

resource "google_compute_firewall" "frontend" {
  name    = "infraestrutura-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080", "443", "3000"]
  }

  source_tags   = ["frontend"]
  source_ranges = ["0.0.0.0/0"]

}