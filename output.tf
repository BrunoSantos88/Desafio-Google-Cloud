output "ip" {
  value = google_compute_instance.servidorweb.network_interface.0.network_ip
}