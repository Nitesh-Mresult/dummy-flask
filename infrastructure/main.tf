provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "POC_test"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                     = "niteshcontainers"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = "Basic"
  admin_enabled            = true
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "flask-app-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "flask-app-dns"

  default_node_pool {
    name       = "nodepool"
    vm_size    = "Standard_DS2_v2"
    node_count = 2
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "development"
  }
}
