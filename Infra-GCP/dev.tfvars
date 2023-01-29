# variables in module network
project_name             = "mohamed-tharwat-project"
project_id               = "mohamed-tharwat-project"
vpc_name                 = "vpc-network"
sub2_region              = "europe-west1"
sub1_region              = "europe-west1"
management_subnet        = "management-subnet"
restricted_subnet        = "restricted-subnet"
management_subnet_cidr   = "10.0.1.0/24"
restricted_subnet_cidr   = "10.0.2.0/24"
# pods_range_cidr          = "10.0.100.0/24"
# services_range_cidr      = "10.0.101.0/24"
# variables in vm
vm_name                  = "management-vm"
vm_machine               = "e2-micro"
vm_image                 = "ubuntu-os-cloud/ubuntu-2204-lts"
# variables in gke
master_cidr              = "172.16.0.0/28"
node_machine             = "e2-small"
node_image               = "COS_CONTAINERD" 
gke_name                 = "app-cluster"
#create project 
# billing_name             = "billing-acount" 
# billing_account          = "xxxx-xxxx-xxxx"
# org_id                   = ""                    #for host only
