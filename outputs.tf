output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.web.id
}

output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = aws_instance.web[*].id
}

output "instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = aws_instance.web[*].public_ip
}

output "instance_public_dns" {
  description = "Public DNS names of EC2 instances"
  value       = aws_instance.web[*].public_dns
}

output "environment" {
  description = "Deployed environment"
  value       = var.environment
}
