provider "azurerm" {
  # Some comment
  version = "~>2.23.0"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

terraform {
  backend "azurerm" {
    # resource_group_name = "Modus._Shared"
    # storage_account_name = "modusshared"
    # container_name = "tstate"
    # key = "pwg004-int.tfstate"
  }
}