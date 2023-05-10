# vars
variable "tags" {
  type = map(string)
  default = {
    Deployed_with_Terraform = "true"
  }
}
variable "location" {
  type    = string
  default = "us-central"
}

variable "naming_prefix" {
  type    = string
  default = "adventure"
}
