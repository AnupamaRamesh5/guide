resource "azurerm_resource_group" "arg" {
    name     = "az-example"
    location = "West Europe"
}

resource "azurerm_storage_account" "asc" {
    name = "storage123555"
    location = azurerm_resource_group.arg.location
    resource_group_name = azurerm_resource_group.arg.name
    account_tier = "Standard"
    account_replication_type = "LRS"
}