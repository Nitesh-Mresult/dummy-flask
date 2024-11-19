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
