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


resource "aws_instance" "webserver01" {
  ami = "ami-0cc3a9edb87c91b53"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  security_groups = [aws_security_group.allow_webtraffic-sg.id]

  tags = {
    Name = "webserver01"
  }
}

resource "aws_security_group" "allow_webtraffic-sg" {
    vpc_id = aws_vpc.challenge1-vpc.id 

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
    Name = "Allow Web Traffic Security Group"
  }
}