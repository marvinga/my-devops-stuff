provider "aws" {
  region = "ca-central-1"
}

resource "aws_vpc" "challenge1-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "TerraformVPC"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.challenge1-vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ca-central-1a"
}


resource "aws_instance" "ec2" {
  ami = "ami-0cc3a9edb87c91b53"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id

  tags = {
    Name = "webserver01"
  }

}

## Adding EIP - Elastic IP to the EC2

resource "aws_eip" "elasticip" {
    instance = aws_instance.ec2.id
}

output "EIP" {
    value = aws.eip.elasticip.public_ip
}