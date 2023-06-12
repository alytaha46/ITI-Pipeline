variable "project_id" {
  description = "project id"
  type        = string
}

variable "region" {
  description = "set the region of whole project"
  type        = string
}

variable "vpc_name" {
  description = "name of the vpc"
  type        = string
}

variable "auto_create_subnets" {
  description = "bool of auto create subnets"
  type        = bool
}

variable "routing_mode" {
  description = "set routing mode of the subnet"
  type        = string
}

variable "subnet_name" {
  description = "name of the subnet"
  type        = string
}

variable "subnet_cider" {
  description = "cider range of the vpc"
  type        = string
}

variable "router_name" {
  description = "name of the router"
  type        = string
}

variable "nat_name" {
  description = "name of the nat gateway"
  type        = string
}

variable "nat_ip_allocate" {
  description = "How external IPs should be allocated for this NAT"
  type        = string
}

variable "nat_source_subnet" {
  description = "How NAT should be configured per Subnetwork"
  type        = string
}

variable "cluster_name" {
  description = "cluster name"
  type        = string
}

variable "cluster_location" {
  description = "cluster location"
  type        = string
}

variable "cluster_node_count" {
  description = "cluster number of nodes"
  type        = number
}

variable "cluster_private_nodes" {
  description = "cluster private nodes"
  type        = bool
}

variable "cluster_private_endpoint" {
  description = "cluster private nodes"
  type        = bool
}

variable "cluster_master_cidr" {
  description = "cluster master cidr block"
  type        = string
}

variable "cluster_master_authorized_networks_cidr" {
  description = "master authorize network cidr"
  type        = string
}
variable "cluster_master_authorized_networks_name" {
  description = "master authorize network name"
  type        = string
}

variable "cluster_node_machine_type" {
  description = "cluster node machine type"
  type        = string
}

