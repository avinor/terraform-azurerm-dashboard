terraform {
  required_version = ">= 0.12.6"
  required_providers {
    azurerm = {
      version = "~> 2.51.0"
    }
  }
}

provider azurerm {
  features {}
}

resource "azurerm_resource_group" "dash" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_dashboard" "dash" {
  for_each = { for d in var.dashboards : d.name => d }

  name                = each.key
  location            = azurerm_resource_group.dash.location
  resource_group_name = azurerm_resource_group.dash.name

  dashboard_properties = templatefile(each.value.tpl_file, each.value.variables)

  tags = var.tags
}