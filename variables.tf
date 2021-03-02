variable "resource_group_name" {
  description = "Name of resource group to deploy resources in."
}

variable "location" {
  description = "The Azure Region in which to create resource."
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}

variable "dashboards" {
  description = "Dashboards definitions"
  type = list(
    object({
      name      = string
      tpl_file  = string
      variables = map(string)
    })
  )
  default = []
}