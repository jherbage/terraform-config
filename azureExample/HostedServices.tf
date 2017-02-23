resource "azure_hosted_service" "azure_test_nat" {
    name = "azuretest8767553"
    location = "North Europe"
    ephemeral_contents = false
    description = "Nat Gateway Hosted service created by Terraform."
    label = "azuretest8767553"
}
