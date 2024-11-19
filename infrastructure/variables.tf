# variables.tf

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "node_pool_size" {
  description = "The size of the node pool"
  type        = number
  default     = 3
}

variable "node_pool_vm_size" {
  description = "The VM size for the node pool"
  type        = string
}

variable "location" {
  description = "The Azure region"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "your-subscription-id"  # Replace with your subscription ID
}

variable "docker_image_tag" {
  description = "The Docker image tag for the Flask application"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account for Terraform state"
  type        = string
}

variable "container_name" {
  description = "The container name"
  type        = string
}
