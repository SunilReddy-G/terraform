data "aws_ami" "joindevops"{
  executable_users = ["self"]
  most_recent      = true

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_instances" "terraform_instance" {
  instance_state_names = ["running"]

  filter {
    name = "instance-ids"
    values = ["sg-12345678"]
  }
}