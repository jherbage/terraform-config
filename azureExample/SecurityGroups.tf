resource "azure_security_group" "public_ssh" {
    name = "public_ssh"
    location = "North Europe"
}


resource "azure_security_group" "private_ssh" {
    name = "private_ssh"
    location = "North Europe"
}

resource "azure_security_group_rule" "public_ssh_access" {
    name = "ssh-access-rule"
    security_group_names = ["${azure_security_group.public_ssh.name}"]
    type = "Inbound"
    action = "Allow"
    priority = 200
    source_address_prefix = "*"
    source_port_range = "*"
    destination_address_prefix = "10.128.2.0/24"
    destination_port_range = "22"
    protocol = "TCP"
}

resource "azure_security_group_rule" "private_ssh_access" {
    name = "private_ssh-access-rule"
    security_group_names = ["${azure_security_group.private_ssh.name}"]
    type = "Inbound"
    action = "Allow"
    priority = 200
    source_address_prefix = "10.128.2.0/24"
    source_port_range = "*"
    destination_address_prefix = "10.128.1.0/24"
    destination_port_range = "22"
    protocol = "TCP"
}
