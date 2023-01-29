variable "project_name" {
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