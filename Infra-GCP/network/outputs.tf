output "out_project_name" {
    value = google_compute_network.vpc_network.project
  
}

output "out_vpc_name" {
    value = google_compute_network.vpc_network.name
  
}

output "out_vpc_id" {
    value = google_compute_network.vpc_network.id
  
}

output "out_region" {
    value = google_compute_subnetwork.management_subnet.region
}

output "out_management_subnet_name" {
    value = google_compute_subnetwork.management_subnet.name
  
}

output "out_management_subnet_id" {
    value = google_compute_subnetwork.management_subnet.id
  
}

output "out_restricted_subnet_name" {
    value = google_compute_subnetwork.restricted_subnet.name
  
}