# this key for the first apply of terraform then you should hash it
resource "google_service_account_key" "mykey_gcr" {
  service_account_id = google_service_account.docker_gcr_sa.name
}
resource "google_service_account_key" "key_gke" {
  service_account_id = google_service_account.gke_sa.name
}