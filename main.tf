provider "azurerm" {
  version = "=2.0.0"
  features {}
}


# Create a resource group
resource "azurerm_resource_group" "resource_group" {
  name     = "rg-devops-showcase"
  location = "East US"
}

# Create azure storage account used to host a static website.
resource "azurerm_storage_account" "storage_account" {
  name                = "stdevopsshowcase"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = "East US"

  # Storage account kind needs to be "StorageV2" to support static website hosting
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  enable_https_traffic_only = true

  static_website {
    index_document     = "index.html"
    error_404_document = "index.html"
  }
}

