# Azure Subscription ID
variable "subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
}

# Resource Group Name for Azure Resources
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "POC_test"  # Default to a specific resource group name
}

# Azure Region for Deployment
variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"  # Default region
}

# Azure Storage Account for Terraform Backend
variable "storage_account_name" {
  description = "The name of the Azure Storage Account for the Terraform backend"
  type        = string
}

# Azure Blob Storage Container Name for Terraform State Files
variable "container_name" {
  description = "The name of the Azure Blob Storage container for Terraform state"
  type        = string
}

# Key Name for Terraform State in Azure Storage
variable "tfstate_key" {
  description = "The name of the key used for the Terraform state file"
  type        = string
  default     = "terraform.tfstate"
}

# Azure Container Registry Name
variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

# Kubernetes Cluster Name
variable "aks_cluster_name" {
  description = "The name of the Azure Kubernetes Service (AKS) cluster"
  type        = string
}

# Kubernetes Node Pool Size
variable "node_pool_size" {
  description = "The size of the node pool for the AKS cluster"
  type        = number
  default     = 2
}

# Kubernetes Node Pool VM Size
variable "node_pool_vm_size" {
  description = "The virtual machine size for the AKS node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

# Docker Image Tag for Flask App Deployment
variable "docker_image_tag" {
  description = "The Docker image tag for the Flask app"
  type        = string
}

# AKS DNS Prefix for Public Access
variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "flask-app-dns"
}

# Terraform Backend State Configuration Variables
variable "backend_storage_account" {
  description = "The name of the Azure Storage account used for the Terraform backend"
  type        = string
}

variable "backend_container_name" {
  description = "The name of the Azure Blob Storage container used for Terraform backend"
  type        = string
}

variable "backend_key" {
  description = "The key name for the Terraform state file in the Azure Blob container"
  type        = string
  default     = "terraform.tfstate"
}
