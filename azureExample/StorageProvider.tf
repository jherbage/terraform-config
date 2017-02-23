resource "azure_storage_service" "azure_test_storage" {
    name = "teststorage8767553"
    location = "North Europe"
    description = "Made by Terraform."
    account_type = "Standard_LRS"
}
