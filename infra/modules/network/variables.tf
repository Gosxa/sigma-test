variable "allowed_ssh_cidr" {
  description = "CIDR allowed to connect via SSH"
  type        = string
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "name" {
  description = "Prefix for resource names"
  type        = string
  default     = "wordpress"
}
