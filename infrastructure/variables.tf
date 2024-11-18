variable "subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "POC_test"
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the Azure Kubernetes Service (AKS) cluster"
  type        = string
}

variable "node_pool_size" {
  description = "The size of the node pool for the AKS cluster"
  type        = number
  default     = 2
}

variable "node_pool_vm_size" {
  description = "The virtual machine size for the AKS node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "flask-app-dns"
}

variable "docker_image_tag" {
  description = "The Docker image tag for the Flask app"
  type        = string
}
