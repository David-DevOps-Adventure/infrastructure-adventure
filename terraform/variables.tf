# vars

# tags
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

# constant values
variable "location" {
  type    = string
  default = "centralus"
}

variable "naming_prefix" {
  type    = string
  default = "adventure"
}
