# create subnet
resource "google_compute_subnetwork" "my_private_subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cider
  network       = google_compute_network.my_iti_vpc.id

}