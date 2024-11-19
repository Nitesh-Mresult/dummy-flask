provider "azurerm" {
  features {}

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

# Optional: Output the names and details of the existing resources
output "container_registry_name" {
  description = "The name of the Azure Container Registry."
  value       = data.azurerm_container_registry.example.name
}

output "aks_cluster_name" {
  description = "The name of the Azure Kubernetes Service cluster."
  value       = data.azurerm_kubernetes_cluster.example.name
}

output "aks_cluster_kube_config" {
  description = "The kubeconfig file for the AKS cluster."
  value       = data.azurerm_kubernetes_cluster.example.kube_config_raw
  sensitive   = true
}

output "acr_login_server" {
  description = "The login server URL for the Azure Container Registry."
  value       = data.azurerm_container_registry.example.login_server
}
