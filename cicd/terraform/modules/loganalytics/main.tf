resource "azurerm_app_service_plan" "web_plan" {
  location = var.location
  name = var.plan_name
  resource_group_name = var.rg
  kind = "Linux"
  reserved = true
  sku {
    size = var.sku_size
    tier = var.sku_tier
  }
}