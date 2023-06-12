# create vpc without aucto create subnets
resource "google_compute_network" "my_iti_vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnets
  routing_mode            = var.routing_mode
}