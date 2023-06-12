# create cloud router
resource "google_compute_router" "nat_router" {
  name    = var.router_name
  network = google_compute_network.my_iti_vpc.id
}

# create cloud nat 
resource "google_compute_router_nat" "nat_gateway" {
  name                               = var.nat_name
  router                             = google_compute_router.nat_router.name
  nat_ip_allocate_option             = var.nat_ip_allocate
  source_subnetwork_ip_ranges_to_nat = var.nat_source_subnet
}
