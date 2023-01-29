
resource "google_compute_instance" "management-vm" {
  name         = var.vm_name
  machine_type = var.vm_machine
  zone         = "${module.network.out_region}-d"
  allow_stopping_for_update = true
 
    # metadata_startup_script = "${file("./installation.sh")}"
    
  boot_disk {
    initialize_params {
      image = var.vm_image
      type  = "pd-standard"
      size  = 50
    }
  }

  service_account {
    email  = google_service_account.gke_sa.email
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]    #to access all of google cloud apis
  }
   
  network_interface {
    network    = module.network.out_vpc_name
    subnetwork = module.network.out_management_subnet_name

  }

    # metadata = {
    # startup-script-url = 
    # }

  depends_on = [
    google_container_cluster.app_cluster
   , google_container_node_pool.nodepool
  ]
  


#    lifecycle {
#     create_before_destroy = true
# }

}
