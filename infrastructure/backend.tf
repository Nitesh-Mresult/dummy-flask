terraform {
  backend "azurerm" {
    resource_group_name   = "TerraformStateRG"
    storage_account_name  = "terraformstateaccount"
    container_name        = "tfstate"
    key                    = "terraform.tfstate"
  }
}
