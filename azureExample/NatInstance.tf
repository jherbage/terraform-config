resource "azure_instance" "nat" {
    name = "azuretestnat"
    hosted_service_name = "${azure_hosted_service.azure_test_nat.name}"
    image = "Ubuntu Server 14.04 LTS"
    size = "Basic_A1"
    storage_service_name = "${azure_storage_service.azure_test_storage.name}"
    location = "North Europe"
    virtual_network = "${azure_virtual_network.azure_test.id}"
    subnet = "public"
    username = "terraform"
    password = "${var.ssh_user_password}"
    security_group = "${azure_security_group.public_ssh.name}"

    endpoint {
        name = "SSH"
        protocol = "tcp"
        public_port = 22
        private_port = 22
    }
    connection {
      user = "terraform"
      password = "${var.ssh_user_password}"
    }
    provisioner "remote-exec" {
      inline = [
        "sudo iptables -t nat -A POSTROUTING -j MASQUERADE",
        "echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward > /dev/null",
      ]
    }
}
