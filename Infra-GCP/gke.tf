resource "google_container_cluster" "app_cluster" {
  name     = var.gke_name
  location = "${var.sub2_region}-b"

  remove_default_node_pool = true
  initial_node_count       = 1
  network = var.vpc_name
  subnetwork = var.restricted_subnet

   private_cluster_config {                # for private ( master & control plane )
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block  = var.master_cidr
  }

    master_authorized_networks_config {    # for access cluster from vm through vpc 
    cidr_blocks {
      cidr_block = var.management_subnet_cidr 
      display_name = "Management CIDR"
    }
}  
  node_config {
    service_account = google_service_account.gke_sa.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }


  release_channel {                       # Multiple per monthly upgrade cadence
      channel = "REGULAR"
  }

 ip_allocation_policy {                   #for secondary range manually 
    #   cluster_secondary_range_name = "pods-range"
    #   services_secondary_range_name = "service-range"
  }

  depends_on = [
    module.network
  ]

}
resource "google_container_node_pool" "nodepool" {
  name       = "${var.gke_name}-node-pool"
  location   = google_container_cluster.app_cluster.location
  cluster    = google_container_cluster.app_cluster.name
  node_count = 3

   management {
    auto_repair  = true
    auto_upgrade = true
  }
    node_config {
    # preemptible = true
    disk_size_gb  = 32
    disk_type     = "pd-standard"
    machine_type  =  var.node_machine
    image_type    =  var.node_image

    service_account = google_service_account.gke_sa.email
    oauth_scopes = [ 
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    labels = {
      cluster = google_container_cluster.app_cluster.name
    }
    }
    upgrade_settings {
    max_surge       = 1
    max_unavailable = 0
     }
}
