provider "azurerm" {
  features {}

  # Optionally, use environment variables to manage Azure credentials
  subscription_id = var.subscription_id   # Refers to a variable in variables.tf
}

resource "azurerm_container_registry" "example" {
  name                = "NiteshContainers"
  resource_group_name = "POC_test"
  location            = "australiaeast"
  sku                 = "Standard"
  admin_enabled       = true
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "flask-app"
  location            = "australiaeast"
  resource_group_name = "POC_test"
  dns_prefix          = "flask-app-dns"

  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_D8ds_v5"
    node_count = 2
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "development"
  }
}
