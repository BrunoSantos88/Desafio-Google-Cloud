output "ip" {
  value = google_compute_instance.ServidorWeb.network_interface.0.network_ip
}