resource "azurerm_resource_group" "this" {
  name     = "intelo-agents-ops-rg"
  location = var.location
}
