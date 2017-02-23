resource "azure_virtual_network" "azure_test" {
    name = "azure_test"
    address_space = ["10.128.0.0/16"]
    location = "North Europe"

    subnet {
        name = "private"
        address_prefix = "10.128.1.0/24"
    }
    subnet {
        name = "public"
        address_prefix = "10.128.2.0/24"
    }
}
