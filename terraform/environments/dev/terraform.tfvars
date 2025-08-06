resource_group_name             = "LoadBalancerRG"
resource_group_location         = "West Europe"

public_ip_name                  = "PublicIPLB"
public_ip_allocation_method     = "Static"

load_balancer_name              = "LoadBalanceralgorims"
frontend_ip_configuration_name = "PublicIPAddressfrontend"


tags = {
  environment = "dev"
  team        = "devops"
}
