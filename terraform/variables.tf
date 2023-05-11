# vars
variable "test_tags" {
  type = map(string)
  default = {
    Deployed_with_Terraform = "true"
    environment             = "test"
  }
}

variable "prod_tags" {
  type = map(string)
  default = {
    Deployed_with_Terraform = "true"
    environment             = "prod"
  }
}

variable "location" {
  type    = string
  default = "centralus"
}

variable "naming_prefix" {
  type    = string
  default = "adventure"
}
