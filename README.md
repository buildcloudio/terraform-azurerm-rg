# terraform-azurerm-rg

Terraform module to manage Azure Resource Groups.

## Usage

### module.tf
```hcl
module "resource_group" {
  source       = "registry.buildcloudio.dev/buildcloudio/rg/azurerm"
  version.     = "1.0.2"

  for_each     = { for each in var.resource_groups : each.usecase => each }
  subscription = each.value.subscription
  environment  = each.value.environment
  usecase      = each.value.usecase
  location     = each.value.location
}
```

### variables.tf
```hcl
variable "resource_groups" {
  description = "Map of resource groups to create"
  type = map(object({
    subscription = string
    environment  = string
    usecase      = string
    location     = string
  }))
}
```

### module.tf.tfvars
```hcl
resource_groups = {
  "rg1" = {
    subscription = "buildcloudio"
    environment  = "dev"
    usecase      = "test"
    location     = "westeurope"
  },

  "rg2" = {
    subscription = "buildcloudio"
    environment  = "dev"
    usecase      = "test2"
    location     = "westeurope"
  }
}
```

### main.tf
```hcl
terraform {
  #backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.61.0"
    }
  }
}

provider "azurerm" {
  features {}
}
```

### outputs.tf
```hcl
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| name | Name of the Resource Group | string | ✅ |
| location | Azure region | string | ✅ |
| tags | Tags to apply | map(string) | ❌ |

## Outputs

| Name | Description |
|------|-------------|
| id | Resource Group ID |
| name | Resource Group name |
| location | Resource Group location |
EOF