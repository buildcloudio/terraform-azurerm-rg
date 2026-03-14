module "resource_group" {
  for_each     = { for each in var.resource_groups : each.usecase => each }
  source       = "../"
  subscription = each.value.subscription
  environment  = each.value.environment
  usecase      = each.value.usecase
  location     = each.value.location
}