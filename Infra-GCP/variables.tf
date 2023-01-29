variable "project_name" {
  type = string
}

variable "project_id" {
  type = string
}

variable "vpc_name" {
  type = string  
}


variable "sub1_region" {
  type = string
}

variable "sub2_region" {
  type = string
}


variable "management_subnet" {
  type = string
}

variable "restricted_subnet" {
  type = string
}

variable "management_subnet_cidr" {
  type = string
  description = " CIDR block for management subnet"
}

variable "restricted_subnet_cidr" {
  type = string
  description = "CIDR block for restricted subnet"
}

# variable "pods_range_cidr" {
#   type = string
#   description = "CIDR block for restricted subnet with secendary range"
# }

# variable "services_range_cidr" {
#   type = string
#   description = "CIDR block for restricted subnet with secendary range"
# }

variable "vm_name" {
  type = string
}

variable "vm_machine" {
  type = string
}

variable "vm_image" {
  type = string
}

variable "master_cidr" {
  type = string
}

variable "gke_name" {
  type = string
}

variable "node_machine" {
  type = string
}

variable "node_image" {
  type = string
}

# variable "billing_name" {
#   type = string
# }

# variable "billing_account" {
#   type = string
# }

# variable "org_id " {
#   type = string
# }


