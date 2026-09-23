aws_region = "ap-south-1"

vpc_id = "vpc-0a25d3e18af0f098f"

subnet_id = "subnet-0e7bd76acde90421e"

ec2_name = "terraform-dev-ec2-01"

ami_id = "ami-066c4849e6b3a1e3d"

instance_type = "t3.micro"

key_name = "terraform-dev-key"

public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINNBCxht49XmpzTev7NFOZggdgiMuP9pRiuxOUa90WrE"

# module.ec2.aws_security_group.this
ingress_rules = [
  {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [
      "167.103.6.249/32"
    ]
  },
  {
    description = "HTTPS access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [
      "10.10.10.10/32",
      "10.10.10.11/32",
      "10.10.10.12/32"
    ]
  },
  {
    description = "Application port"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [
      "10.20.20.10/32"
    ]
  }
]

root_volume_size = 50