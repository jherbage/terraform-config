provider "aws" {
  access_key = "AKIAIGXQ2J7ATJY3BTEA"
  secret_key = "SlPnUiVwDkfs3RfiYK48bOWkqB8gznEwH12zrdzI"
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}