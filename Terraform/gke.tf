resource "google_container_cluster" "cluster" {
  name               = var.cluster_name
  location           = var.cluster_location
  initial_node_count = var.cluster_node_count
  network            = google_compute_network.my_iti_vpc.id
  subnetwork         = google_compute_subnetwork.my_private_subnet.id

  private_cluster_config {
    enable_private_endpoint = var.cluster_private_endpoint
    enable_private_nodes    = var.cluster_private_nodes
    master_ipv4_cidr_block  = var.cluster_master_cidr
  }

  ip_allocation_policy {    
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = var.cluster_master_authorized_networks_cidr
      display_name = var.cluster_master_authorized_networks_name
    }
  }
  node_config {
    machine_type = var.cluster_node_machine_type
  }
}