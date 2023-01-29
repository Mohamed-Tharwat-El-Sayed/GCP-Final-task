output "ssh" {
  description = "GCloud ssh command to connect to the vm instance."
  value       = "gcloud compute ssh ${var.vm_name} --project ${var.project_id} --zone ${google_compute_instance.management-vm.zone} --tunnel-through-iap "
}

