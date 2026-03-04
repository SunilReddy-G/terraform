data "aws_ami" "hema"{
  executable_users = ["self"]
  most_recent      = true

  filter {
    name   = "owner-account-id"
    values = ["973714476881"]
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

# data "aws_instances" "terraform_instance" {
#   instance_state_names = ["running"]

#   filter {
#     name = "instance-ids"
#     values = ["sg-12345678"] # existing instance number need to provide
#   }
# }