  provider "aws" {
    region = "ca-central-1"
  }
  
  
resource "aws_vpc" "challenge1-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "TerraformVPC"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.challenge1-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ca-central-1a"
}

resource "aws_subnet" "private_subnet1" {
  vpc_id = aws_vpc.challenge1-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ca-central-1a"
}
  
module "db" {
  source = "./db"
}

module "web" {
  source = "./web"
}


output "PrivateIP" {
    value = module.db.PrivateIP
}


output "PublicIP" {
    value = module.web.pub_ip
}

