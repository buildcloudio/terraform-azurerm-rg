# terraform-azurerm-rg

Terraform module to manage Azure Resource Groups.

## Usage
```hcl
module "resource_group" {
  source = "git::https://github.com/buildcloudio/terraform-azurerm-rg.git?ref=v1.0.0"

  name     = "rg-myproject-001"
  location = "westeurope"
  tags = {
    environment = "dev"
    owner       = "anand"
  }
}
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