variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Existing subnet ID"
  type        = string
}

variable "ec2_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "public_key" {
  description = "SSH public key"
  type        = string
  sensitive   = true
}

variable "ingress_rules" {
  description = "Inbound security group rules"

  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "root_volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 50
}