output "ids" {
  description = "The ID for all dashboards created"
  value       = { for k, v in azurerm_portal_dashboard.dash : k => v.id }
}
