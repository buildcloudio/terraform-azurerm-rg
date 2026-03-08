locals {
  resource_group_name = lower("${var.subscription}-${var.environment}-${var.usecase}-rg")
}