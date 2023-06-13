project_id               = "subtle-tooling-387906"
region                   = "us-central1"
vpc_name                 = "iti-vpc"
auto_create_subnets      = false
routing_mode             = "REGIONAL"
subnet_name              = "private-subnet"
subnet_cider             = "10.0.0.0/24"
router_name              = "nat-router"
nat_name                 = "nate-gatway"
nat_ip_allocate          = "AUTO_ONLY"
nat_source_subnet        = "ALL_SUBNETWORKS_ALL_IP_RANGES"
cluster_name             = "my-private-cluster"
cluster_location         = "us-central1-a"
cluster_node_count       = 2
cluster_private_nodes    = true
cluster_private_endpoint = false
cluster_master_cidr      = "10.16.0.0/28"
cluster_master_authorized_networks_cidr = "102.191.249.56/32"
cluster_master_authorized_networks_name = "Authorized Network"
cluster_node_machine_type = "e2-standard-4"