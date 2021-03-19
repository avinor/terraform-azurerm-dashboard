module "dashboard" {

  source = "../../"

  resource_group_name = "dashboard-rg"
  location            = "westeurope"

  dashboards = [
    {
      name     = "dash1"
      tpl_file = "simple_dashboard1_json.tpl"
      variables = {
        title = "markdown1"
      }
    },
    {
      name     = "dash2"
      tpl_file = "simple_dashboard2_json.tpl"
      variables = {
        subtitle = "markdown2"
      }
    }
  ]

  tags = {
    tag1 = "value1"
  }
}
