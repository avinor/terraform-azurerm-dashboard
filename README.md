# Azure Dashboard Terraform Module

Terraform module to deploy multiple Azure dashboards in an Azure resource group using json template files for dashboard definitions.

## Usage

This example deploys a simple dashboard.

Example uses [tau](https://github.com/avinor/tau) for deployment.

```terraform
module {
  source = "github.com/avinor/terraform-azurerm-dashboard"
}

inputs {
  name                = "dashboard"
  resource_group_name = "dashboard-rg"
  location            = "westeurope"

  dashboards = [
    {
      name     = "dash"
      tpl_file = "simple_dashboard_json.tpl"
      variables = {
        title = "My Title"
      }
    }
  ]

  tags = {
    tag1 = "value1"
  }
}
```

## References
- [Azure dashboard documentation](https://docs.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboards)
- [Azure provider dashboard](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dashboard)