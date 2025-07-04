terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
      configuration_aliases = [
        kubernetes.langfuse,
      ]
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.5"
      configuration_aliases = [
        helm.langfuse,
      ]
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.0"
    }
  }
}

data "azurerm_client_config" "current" {}
