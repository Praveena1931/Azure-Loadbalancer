provider "azurerm" {
  features {}
}

module "LoadBalancer" {
  source                         = "../../modules/loadbalancer"
  resource_group_name            = var.resource_group_name
  resource_group_location        = var.resource_group_location
  public_ip_name                 = var.public_ip_name
  public_ip_allocation_method    = var.public_ip_allocation_method
  load_balancer_name             = var.load_balancer_name
  frontend_ip_configuration_name = var.frontend_ip_configuration_name

}
