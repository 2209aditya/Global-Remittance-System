provider "azurerm" {
  features {}
}

# Primary Region
module "rg_primary" {
  source   = "../modules/resource-group"
  name     = "globalremit-prod-eastus"
  location = "East US"
}

# Secondary Region (DR)
module "rg_secondary" {
  source   = "../modules/resource-group"
  name     = "globalremit-prod-westeurope"
  location = "West Europe"
}