locals {

}

module "vnet" {
  source = "./modules/vnet"
  prefix = var.prefix
  environment = var.environment
  # addrspace = "10.249.26.0"
  addrspace = var.vnet_addrspace
  mask = 23
  peervnet_name = var.peervnet_name
  peervnet_rg_name = var.peervnet_rg_name
  tags = {
    "environment" = var.environment
    "project" = var.prefix
  }
}

module "keyvault" {
  source = "./modules/keyvault"
  prefix = var.prefix
  environment = var.environment

  tags = {
    "environment" = var.environment
    "project" = var.prefix
  }
}

module "loganalytics" {
  source = "./modules/loganalytics"
  prefix = var.prefix
  environment = var.environment
}