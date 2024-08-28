provider "azurerm" {
  features {}
  subscription_id = "68bf633f-2654-4d8b-845e-c0d8d5f53cd7"
}

terraform {
  backend "azurerm" {
    storage_account_name = "noorterraformstatest1"
    container_name       = "terraform-state"
    key                  = "noor-azure-web-iac.terraform.tfstate"
    # Can also be set via `ARM_ACCESS_KEY` environment variable.
    # access_key           = "abcdefghijklmnopqrstuvwxyz0123456789..."  
  }
}

# STORAGE_ACCOUNT_ACCESS_KEY
# variable "storage_account_access_key" {
#   description = "The public SSH key to use for the virtual machine."
#   type        = string
# }
