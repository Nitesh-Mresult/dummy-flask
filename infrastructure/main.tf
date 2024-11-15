provider "azurerm" {
  features {}

  # Set the correct subscription ID here
  subscription_id = "7532a935-5f60-4226-b24a-402e4ba6a990"
}

resource "azurerm_resource_group" "rg" {
  name     = "POC_test"
  location = "australiaeast"
}

# Azure Container Registry (ACR)
resource "azurerm_container_registry" "example" {
  name                     = "niteshcontainerregistry"  # Replace with a globally unique name
  resource_group_name       = azurerm_resource_group.rg.name  # Reference resource group dynamically
  location                 = "AustraliaEast"
  sku                      = "Basic"
  admin_enabled            = true
}

# Azure Kubernetes Cluster (AKS)
resource "azurerm_kubernetes_cluster" "example" {
  name                     = "flask-aks-cluster"  # Replace with a globally unique name
  resource_group_name      = azurerm_resource_group.rg.name  # Reference resource group dynamically
  location                 = "AustraliaEast"
  dns_prefix               = "flask-app-dns"

  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_DS2_v2"
    node_count = 2
  }

  identity {
    type = "SystemAssigned"
  }
}

