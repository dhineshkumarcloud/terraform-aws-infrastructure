output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2.instance_id
}

output "ec2_private_ip" {
  description = "EC2 private IP address"
  value       = module.ec2.private_ip
}

output "ec2_instance_arn" {
  description = "EC2 instance ARN"
  value       = module.ec2.instance_arn
}

output "security_group_id" {
  description = "Security group ID"
  value       = module.ec2.security_group_id
}