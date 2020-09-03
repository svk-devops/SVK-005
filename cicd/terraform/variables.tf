# Provider settings
variable "subscription_id" {
  type        = string
  default = null
  description = "Azure subscription ID"
}

variable "client_id" {
  type        = string
  default = null
  description = "Azure Service Principal id (client id)"
}

variable "client_secret" {
  type        = string
  default = null
  description = "Azure client Service Principal secret (client secret)"
}

variable "tenant_id" {
  type        = string
  default = null
  description = "Azure tenant or directory id"
}

# Environment settings 
variable "prefix" {
  type = string
  default = "svk-005"
  description = "The prefix used for all resources in this example"
}
variable "environment" {
  type = string
  default = "demo"
  description = "Deployment environment"
}
