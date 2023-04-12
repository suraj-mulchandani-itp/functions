variable "resource_group_name" {
  type = string
  default = "functions-rg"
}

variable "location" {
  type = string
  default = "East US"
}

variable "storage_account_name" {
  type = string
  default = "functionsappsafordemo"
}

variable "storage_account_tier" {
  type = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type = string
  default = "LRS"
}

variable "app_service_plan_name" {
  type = string
  default = "azure-functions-test-service-plan"
}

variable "sku_tier" {
  type = string
  default = "Standard"
}

variable "sku_size" {
  type = string
  default = "S1"
}

variable "functions_app_name" {
  type = string
  default = "azure-functions-app-linux"
}