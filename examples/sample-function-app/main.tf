module "demo-fa" {
  source = "../.."

  resource_group_name = "functions-rg"
  location = "East US"

  storage_account_name = "functionsappsafordemo"
  storage_account_tier = "Standard"
  storage_account_replication_type = "LRS"

  app_service_plan_name = "azure-functions-test-service-plan"

  sku_tier = "Standard"
  sku_size = "S1"

  functions_app_name = "azure-functions-app-linux"
}