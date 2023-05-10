# vars
variable "tags" {
  type = map(string)
  default = {
    Deployed_with_Terraform = "true"
  }
}
variable "location" {
  type    = string
  default = "Central US"
}

variable "naming_prefix" {
  type    = string
  default = "adventure"
}
