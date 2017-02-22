variable "access_key" {}
variable "secret_key" {}
variable "region" {}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "terraformConfiguredInstance" {
  ami           = "ami-cbfcd2b8"
  instance_type = "t2.micro"
}
