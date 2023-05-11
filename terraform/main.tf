# locals
locals {
  test_resource_group   = "rg-${var.naming_prefix}-test-${var.location}-01"
  prod_resource_group   = "rg-${var.naming_prefix}-prod-${var.location}-01"
  test_static_front_end = "stapp-frontend-${var.naming_prefix}-test-${var.location}-01"
  prod_static_front_end = "stapp-frontend-${var.naming_prefix}-prod-${var.location}-01"
}

# resources

# resource groups:
resource "azurerm_resource_group" "test_rg" {
  name     = local.test_resource_group
  location = var.location
  tags     = var.test_tags
}

resource "azurerm_resource_group" "prod_rg" {
  name     = local.prod_resource_group
  location = var.location
  tags     = var.prod_tags
}



# static web apps:
resource "azurerm_static_site" "test_static_front_end" {
  name                = local.test_static_front_end
  resource_group_name = local.test_resource_group
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Free"
  tags                = var.test_tags
}

resource "azurerm_static_site" "prod_static_front_end" {
  name                = local.prod_static_front_end
  resource_group_name = local.prod_resource_group
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Free"
  tags                = var.prod_tags
}
