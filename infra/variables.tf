variable "aws_region" {
  type    = string
  default = "eu-north-1"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "key_name" {
  type    = string
  default = "my-key"
}

variable "allowed_ssh_cidr" {
  description = "Public IP of your computer, e.g. 203.0.113.25/32"
  type        = string

  validation {
    condition     = var.allowed_ssh_cidr != "0.0.0.0/0"
    error_message = "SSH must never be open to 0.0.0.0/0."
  }
}