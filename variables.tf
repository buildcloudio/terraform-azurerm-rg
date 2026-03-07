variable "subscription" {
  description = "Azure subscription identifier"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "usecase" {
  description = "Use case or service name for the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the resource group (e.g., East US, West US)"
  type        = string
}