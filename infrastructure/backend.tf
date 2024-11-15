terraform {
  backend "azurerm" {
    resource_group_name   = "POC_test"
    storage_account_name  = "terraformstate1910"
    container_name        = "tfstatestorage"
    key                    = "terraform.tfstate"
  }
}
