output "kubernetes_cluster_host" {
  value = google_container_cluster.cluster.endpoint
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.cluster.name
}

output "project_id" {
  value = google_container_cluster.cluster.project
}

output "region" {
  value = var.cluster_location
}
/*
output "json" {
  value = nonsensitive(google_service_account_key.mykey.private_key)
}*/
