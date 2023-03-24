terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstatenobbsinfra"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.36.2"
    }
    inwx = {
      source  = "inwx/inwx"
      version = "1.3.0"
    }
  }
}
