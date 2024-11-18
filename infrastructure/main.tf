provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "example" {
  name                     = var.acr_name
  resource_group_name       = azurerm_resource_group.rg.name
  location                 = var.location
  sku                      = "Basic"
  admin_enabled            = true
}

resource "azurerm_kubernetes_cluster" "example" {
  name                     = var.aks_cluster_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  dns_prefix               = var.dns_prefix

  default_node_pool {
    name       = "agentpool"
    vm_size    = var.node_pool_vm_size
    node_count = var.node_pool_size
  }

  identity {
    type = "SystemAssigned"
  }
}
