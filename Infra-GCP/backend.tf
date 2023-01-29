# resource "google_storage_bucket" "bucket" {
#   name          = "tf-state-tharwatmoh"
#   location      = "europe-west1"
#   project       = "mohamed-tharwat-project"
#   storage_class = "REGIONAL"
# }
# terraform {
#   backend "gcs" {
#     bucket  = "tf-state-tharwatmoh"
#     prefix  = "terraform/state"

   
#   }
  
# }