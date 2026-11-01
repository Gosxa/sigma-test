output "public_ip" {
  description = "EC2 public IP"
  value       = module.ec2.public_ip
}

output "site_url" {
  description = "WordPress URL"
  value       = "http://${module.ec2.public_ip}"
}
