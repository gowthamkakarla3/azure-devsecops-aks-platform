resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# ------------------------
# VNET
# ------------------------
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-prod-secure"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

# ------------------------
# SUBNETS
# ------------------------

# AKS Subnet (PRIVATE)
resource "azurerm_subnet" "aks_subnet" {
  name                 = "snet-aks-private"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

# Public subnet (future App Gateway)
resource "azurerm_subnet" "public_subnet" {
  name                 = "snet-public-dmz"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# ------------------------
# ACR
# ------------------------
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}

# ------------------------
# AKS
# ------------------------
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aksdevsecops"

  default_node_pool {
    name           = "default"
    node_count     = 2
    vm_size        = "Standard_D2s_v3"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"

    service_cidr       = "10.1.0.0/16"     # ✅ no overlap
    dns_service_ip     = "10.1.0.10"

    load_balancer_sku  = "standard"        # ✅ REQUIRED for production
  }
}

# ------------------------
# ROLE ASSIGNMENT (ACR → AKS)
# ------------------------
resource "azurerm_role_assignment" "acr_pull" {
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.acr.id
}