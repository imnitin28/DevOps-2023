# terraform {
#   required_providers {
#     azuredevops = {
#       source  = "microsoft/azuredevops"
#       version = ">=0.1.0"
#     }

#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "3.50.0"
#     }
#   }
# }

# # provider "azuredevops" {
# #   org_service_url = var.ado_org_service_url
# #   # Authentication through PAT defined with AZDO_PERSONAL_ACCESS_TOKEN 
# # }

# provider "azurerm" {
#   # Configuration options
#   features {}
# }

# provider "azuredevops" {
#   # version = "0.1.0"
#   # Remember to specify the org service url and personal access token details below
#   org_service_url = "https://dev.azure.com/nitinmishraaz/az-ado-nm/"
#   personal_access_token = "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"
# }


# terraform {
#   required_providers {
    

#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 2.0"

#     }

#     azuread = {
#       source = "hashicorp/azuread"
#       version = "~> 1.0"
#     }

#   }
#   backend "remote" {
#     organization = "ned-in-the-cloud"

#     workspaces {
#       name = "terraform-tuesday-ado-setup"
#     }
#   }
# }


terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = "=0.1.7"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.75.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuredevops" {
  org_service_url = "https://dev.azure.com/nitinmishraaz/az-ado-nm/"
  personal_access_token = "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"
}