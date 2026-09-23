data "aws_vpc" "existing" {
  id = var.vpc_id
}

data "aws_subnet" "existing" {
  id = var.subnet_id
}

module "ec2" {
  source = "../../modules/ec2"

  name             = var.ec2_name
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  subnet_id        = data.aws_subnet.existing.id
  vpc_id           = data.aws_vpc.existing.id
  key_name         = var.key_name
  public_key       = var.public_key
  ingress_rules    = var.ingress_rules
  root_volume_size = var.root_volume_size
}