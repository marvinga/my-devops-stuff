provider "aws" {
  region = "ca-central-1"
}

resource "aws_vpc" "challenge1-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "TerraformVPC"
  }
}