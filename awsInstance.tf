provider "aws" {
  access_key = "AKIAIGXQ2J7ATJY3BTEA"
  secret_key = "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"
  region     = "eu-west-1"
}

resource "aws_instance" "terraformConfiguredExample" {
  ami           = "ami-cbfcd2b8"
  instance_type = "t2.micro"
}