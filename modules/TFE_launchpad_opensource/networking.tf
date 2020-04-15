
module "blueprint_networking" {
  source = "./blueprints/blueprint_networking"
  
  prefix                    = local.prefix
  convention                = var.convention
  tags                      = local.tags
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  workspace                 = var. workspace
  networking_object         = var.blueprint_networking.networking_object
  log_analytics_workspace   = module.log_analytics.object
  diagnostics_map           = module.diagnostics.diagnostics_map
}
