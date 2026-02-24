variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
  default = "Z052209938NSBMYI7279D"
}
variable "domain_name" {
  default = "virtualmall.store"
}