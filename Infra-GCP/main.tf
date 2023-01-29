module "network" {
    source = "./network"

    project_name            = var.project_name
    vpc_name                = var.vpc_name
    sub2_region             = var.sub2_region
    sub1_region             = var.sub1_region
    management_subnet       = var.management_subnet 
    restricted_subnet       = var.restricted_subnet 
    management_subnet_cidr  = var.management_subnet_cidr
    restricted_subnet_cidr  = var.restricted_subnet_cidr
    # pods_range_cidr         = var.pods_range_cidr  
    # services_range_cidr     = var.services_range_cidr 
} 