#------------------------------------------------------------------
# Azure - Resource Group
#------------------------------------------------------------------

# Resource Group

variable "resource_groups" {
  description = "Map of resource groups to create"
  type = map(object({
    subscription = string
    environment  = string
    usecase      = string
    location     = string
  }))
}

#------------------------------------------------------------------