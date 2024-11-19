variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
}

variable "container_name" {
  description = "The name of the Azure Storage Container"
  type        = string
}

variable "tfstate_key" {
  description = "The key name for the Terraform state file in the container"
  type        = string
  default     = "terraform.tfstate"  # Default to a common Terraform state file name
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
}

variable "node_pool_size" {
  description = "The size of the node pool"
  type        = number
  default     = 3  # You can set a default value if desired
}

variable "docker_image_tag" {
  description = "Docker image tag for the container"
  type        = string
  default     = "latest"
}

variable "subscription_id" {
  description = "The subscription ID for Azure"
  type        = string
}
