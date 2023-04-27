# vars
variable "env_tags" {
  type = map(string)
  default = {
    Environment             = "prod"
    Deployed_with_Terraform = "true"
  }
}
variable "location" {
  type    = string
  default = "eastus"
}

variable "naming_prefix" {
  type    = string
  default = "adevnture-prod-01"
}
