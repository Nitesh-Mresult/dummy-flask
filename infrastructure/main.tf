provider "azurerm" {
  features {}

  # Explicitly define the subscription ID (if needed)
  subscription_id = "7532a935-5f60-4226-b24a-402e4ba6a990"  # Replace with your actual subscription ID
}

resource "azurerm_container_registry" "example" {
  name                = "NiteshContainers"  # Keep the same name as the existing ACR
  resource_group_name = "POC_test"          # Keep the same resource group
  location            = "australiaeast"     # Keep the same location as the existing ACR
  sku                 = "Standard"          # Revert to standard sku tier
  admin_enabled       = true                # Set as per your requirements
}

# Azure Kubernetes Service (AKS) Configuration
resource "azurerm_kubernetes_cluster" "example" {
  name                = "flask-app"                 # Existing AKS cluster name
  location            = "australiaeast"             # Existing location
  resource_group_name = "POC_test"                  # Existing resource group
  dns_prefix          = "flask-app-dns"             # Revert to the original DNS prefix

  default_node_pool {
    name                = "agentpool"  # Keep the original node pool name
    vm_size             = "Standard_D8ds_v5"  # Revert to original VM size
    node_count          = 2  # Keep the original node count
  }

  identity {
    type = "SystemAssigned"                       # Managed identity for AKS
  }

  tags = {
    environment = "development"                   # Optional: Replace with actual tags if needed
  }
}