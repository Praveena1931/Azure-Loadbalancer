resource "azurerm_resource_group" "LBResource" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_public_ip" "LBpublicip" {
  name                = var.public_ip_name
  location            = azurerm_resource_group.LBResource.location
  resource_group_name = azurerm_resource_group.LBResource.name
  allocation_method   = var.public_ip_allocation_method
}

resource "azurerm_lb" "Loadbalancer" {
  name                = var.load_balancer_name
  location            = azurerm_resource_group.LBResource.location
  resource_group_name = azurerm_resource_group.LBResource.name

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.LBpublicip.id
  }
}