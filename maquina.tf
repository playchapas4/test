terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.83.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

locals {
    grupo_recurso = ""
}
data "azurerm_network_security_group" "example" {
  name                = var.nombre
  resource_group_name = local.grupo_recurso
}