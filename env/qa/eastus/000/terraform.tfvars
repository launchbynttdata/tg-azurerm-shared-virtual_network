environment             = "qa"
environment_number      = "000"
logical_product_family  = "dso"
logical_product_service = "net"
location                = "eastus"

//Variables for networking module
address_space            = ["10.17.0.0/16"]
subnet_names             = ["aks-mgmt-sbnt", "aks-pool-sbnt", "bastion-subnet", "acr-subnet"]
subnet_prefixes          = ["10.17.0.0/24", "10.17.1.0/24", "10.17.2.0/24", "10.17.3.0/24"]
bgp_community            = null
ddos_protection_plan     = null
dns_servers              = []
nsg_ids                  = {}
route_tables_ids         = {}
subnet_delegation        = {}
subnet_service_endpoints = {}
use_for_each             = true
subnet_private_endpoint_network_policies_enabled = {
  aks-mgmt-sbnt = false
  aks-pool-sbnt = false
  bastion-subnet = false
  acr-subnet = false
}

vnet_tags = {
  environment = "qa"
  product_family = "dso"
  product_service = "net"
  location = "eastus"
}

resource_group_tags = {
  environment = "qa"
  product_family = "dso"
  product_service = "net"
  location = "eastus"
}