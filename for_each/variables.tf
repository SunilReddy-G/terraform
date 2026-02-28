variable "instances" {
  type = map
  default = {
    mongodb = "t3.micro"
    redis = "t3.micro"
    mysql = "t3.small"
    rabbitmq = "t3.micro"
    catalogue = "t3.micro"
    user = "t3.micro"
    cart = "t3.micro"
    shipping = "t3.small"
    }
}

variable "zone_id" {
  default = "Z052209938NSBMYI7279D"
}
variable "domain_name" {
  default = "virtualmall.store"
}