# vars
variable "test_tags" {
  type = map(string)
  default = {
    Deployed_with_Terraform = "true"
    Environment             = "test"
  }
}
variable "location" {
  type    = string
  default = "eastus"
}

variable "naming_prefix" {
  type    = string
  default = "adevnture"
}
