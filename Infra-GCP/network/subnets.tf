#----------------------------management_subnet for VM-----------------------------------------------

resource "google_compute_subnetwork" "management_subnet" {
  name                    = var.management_subnet
  ip_cidr_range           = var.management_subnet_cidr
  region                  = var.sub1_region
  private_ip_google_access= true        #VMs without external IP can access Google APIs and services by using Private Google Access


  network       = google_compute_network.vpc_network.id
  
#   log_config {
#     aggregation_interval = "INTERVAL_10_MIN"
#     metadata             = "INCLUDE_ALL_METADATA"
#   }
}

#---------------------------------restricted_subnet for GKE-----------------------------------------

resource "google_compute_subnetwork" "restricted_subnet" {
  name                    = var.restricted_subnet
  ip_cidr_range           = var.restricted_subnet_cidr
  region                  = var.sub2_region
  private_ip_google_access= true          #VMs without external IP can access Google APIs and services by using Private Google Access

  network       = google_compute_network.vpc_network.id

#   secondary_ip_range { 
#     range_name    = "pods-range"
#     ip_cidr_range = var.pods_range_cidr       #pods get ips from this range
#   }
#    secondary_ip_range { 
#     range_name    = "service-range"
#     ip_cidr_range = var.services_range_cidr   #services get ips from this range 
# }
}