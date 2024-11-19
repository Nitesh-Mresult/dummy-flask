provider "azurerm" {
  features {}
  version = ">= 3.0"  # Specify a compatible version


  # Azure credentials will be automatically pulled from the environment
  # when using the azure/login GitHub Action
}

# Data block to reference an existing resource group
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name  # Ensure this references the existing resource group name from terraform.tfvars
}

# Data block to reference an existing Azure Container Registry (ACR)
data "azurerm_container_registry" "example" {
  name                     = var.acr_name
  resource_group_name       = data.azurerm_resource_group.rg.name  # Reference the existing resource group
}

# Data block to reference an existing Azure Kubernetes Service (AKS) cluster
data "azurerm_kubernetes_cluster" "example" {
  name                     = var.aks_cluster_name
  resource_group_name      = data.azurerm_resource_group.rg.name  # Reference the existing resource group
}

