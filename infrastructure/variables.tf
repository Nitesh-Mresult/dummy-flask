variable "subscription_id" {
  description = "The subscription ID for Azure."
  type        = string
  default     = "7532a935-5f60-4226-b24a-402e4ba6a990" # Replace with your actual subscription ID if needed
}

variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
  type        = string
  default     = "POC_test"
}

variable "location" {
  description = "The location where resources will be created."
  type        = string
  default     = "australiaeast"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "NiteshContainers"
}

variable "aks_cluster_name" {
  description = "The name of the Azure Kubernetes Service cluster."
  type        = string
  default     = "flask-app"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
  default     = "flask-app-dns"
}

variable "node_pool_name" {
  description = "The name of the AKS node pool."
  type        = string
  default     = "agentpool"
}

variable "vm_size" {
  description = "The VM size for the AKS node pool."
  type        = string
  default     = "Standard_D8ds_v5"
}

variable "node_count" {
  description = "The number of nodes in the AKS node pool."
  type        = number
  default     = 2
}

variable "admin_enabled" {
  description = "Whether to enable admin access to the Azure Container Registry."
  type        = bool
  default     = true
}
