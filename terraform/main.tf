# locals
locals {
  resource_group   = "rg-${var.naming_prefix}-${var.location}-01"
  static_front_end = "staticfe-${var.naming_prefix}-${var.location}-01"
}

# resources
resource "azurerm_resource_group" "rg" {
  name     = local.resource_group
  location = var.location
  tags     = var.tags
}

resource "azurerm_static_site" "static_frontend" {
  name                = local.static_front_end
  resource_group_name = local.resource_group
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Free"
}
