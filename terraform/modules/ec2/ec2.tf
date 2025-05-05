data "aws_ami" "ec2_image"{
    most_recent = true
    filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-x86_64-gp2" ]
  }
    filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = [ "amazon" ]
}
resource "aws_instance" "name" {
  ami = data.aws_ami.ec2_image.id
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  associate_public_ip_address = true
  key_name = "ansible"
  tags = {
    Name="Anible-instance"
  }
}