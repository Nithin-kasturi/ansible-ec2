module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  ami = var.ami
  availability_zone = var.availability_zone
}