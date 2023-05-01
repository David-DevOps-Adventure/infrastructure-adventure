# locals
locals {
  test_resource_group = "rg-${var.naming_prefix}-test-${var.location}-01"
}

# resources
resource "azurerm_resource_group" "test-rg" {
  name     = local.test_resource_group
  location = var.location
  tags     = var.test_tags
}
