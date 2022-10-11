resource "google_compute_firewall" "security" {
project       = "bootcamp-363315"
  name        = "security-frontend"
  network     = "default"
  description = "Creates firewall rule targeting tagged instances frontend"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]

  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = ["0.0.0.0/0"]
  

}