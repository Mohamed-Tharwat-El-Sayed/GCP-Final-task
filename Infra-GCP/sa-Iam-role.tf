#grant access to service account using iam role for gke 
resource "google_project_iam_member" "gke_management_ir" {
  project = var.project_id
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.gke_sa.email}"
}

resource "google_project_iam_member" "gke_ir" {
  project = var.project_id
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.gke_sa.email}"
}

#grant access to service account using iam role for docker
resource "google_project_iam_member" "docker_gcr_ir" {
  project = var.project_id
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.docker_gcr_sa.email}"
}

