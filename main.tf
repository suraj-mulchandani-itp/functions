resource "azurerm_resource_group" "demo_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "functions_app_sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  depends_on = [
    azurerm_resource_group.demo_rg
  ]
}

resource "azurerm_app_service_plan" "example_app_plan" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }

  depends_on = [
    azurerm_resource_group.demo_rg
  ]
}

resource "azurerm_linux_function_app" "example" {
  name                       = var.functions_app_name
  resource_group_name        = var.resource_group_name
  location                   = var.location

  service_plan_id            = azurerm_app_service_plan.example_app_plan.id
  storage_account_name       = azurerm_storage_account.functions_app_sa.name
  storage_account_access_key = azurerm_storage_account.functions_app_sa.primary_access_key

  site_config {
    
  }
}