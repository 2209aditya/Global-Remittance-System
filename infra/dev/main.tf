provider "azurerm" {
  features {}
}

module "rg" {
  source   = "../modules/resource-group"
  name     = "globalremit-dev-rg"
  location = "Central India"
}

module "transfer_api" {
  source         = "../modules/function-app"
  app_name       = "transfer-api-dev"
  resource_group = module.rg.name
  location       = "Central India"
  storage_name   = "transferdevsa123"
}