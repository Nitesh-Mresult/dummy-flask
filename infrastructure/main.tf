# main.tf

provider "azurerm" {
  features {}

  # Azure credentials will be automatically pulled from the environment
  # when using the azure/login GitHub Action
}

# Data block to reference an existing resource group
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name  # Ensure this references the existing resource group name from terraform.tfvars
}

# Azure Container Registry (ACR) resource
resource "azurerm_container_registry" "example" {
  name                     = var.acr_name
  resource_group_name       = data.azurerm_resource_group.rg.name  # Reference the existing resource group
  location                 = var.location  # Will use the location from terraform.tfvars (AustraliaEast)
  sku                      = "Basic"
  admin_enabled            = true
}

# Azure Kubernetes Service (AKS) cluster resource
resource "azurerm_kubernetes_cluster" "example" {
  name                     = var.aks_cluster_name
  resource_group_name      = data.azurerm_resource_group.rg.name  # Reference the existing resource group
  location                 = var.location  # Will use the location from terraform.tfvars (AustraliaEast)
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
