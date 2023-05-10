# locals
locals {
  test_resource_group = "rg-${var.naming_prefix}-test-${var.location}-01"
  test_front_end      = "staticapp-${var.naming_prefix}-test-${var.location}-01"
}

# resources
resource "azurerm_resource_group" "test-rg" {
  name     = local.test_resource_group
  location = var.location
  tags     = var.test_tags
}

resource "azurerm_static_site" "static_frontend_test" {
  name                = local.test_front_end
  resource_group_name = local.test_resource_group
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
  identity {
    type = "SystemAssigned"
  }
}
