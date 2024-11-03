module "globalvar" {
  source = "../global_vars"
}

# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "main" {
  name     = "rg-${var.rg_short_name}-${var.project}-${lookup(module.globalvar.region_short, var.location)}-${var.environment}"
  location = var.location
  tags     = var.tags
}

output "resource_group_name" {
  value = azurerm_resource_group.main.name
  
}
