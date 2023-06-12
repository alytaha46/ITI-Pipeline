/*
resource "google_project_iam_custom_role" "my_custom_role" {
  role_id        = "gke_admin"
  title          = "gke-admin"
  permissions    = ["container.clusters.get", "container.clusters.create", "container.clusters.update", "container.clusters.delete"]
}

resource "google_service_account" "my_service_account" {
  account_id   = "iti-admin"
  display_name = "iti-admin"
}

resource "google_project_iam_member" "my_service_account_role" {
  project = var.project_id
  role    = "${google_project_iam_custom_role.my_custom_role.name}"
  member  = "serviceAccount:${google_service_account.my_service_account.email}"
}
resource "google_service_account_key" "mykey" {
  service_account_id = google_service_account.my_service_account.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}*/