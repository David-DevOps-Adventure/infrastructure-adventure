# locals
locals {
  resource_group_name = "rg-${var.naming_prefix}"
}

# resources
resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
  tags     = var.env_tags
}
