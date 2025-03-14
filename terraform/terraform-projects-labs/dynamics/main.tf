variable "ingressrules" {
  type = list(number)
  default = [ 80,443 ]
}

variable "egressrules" {
  type = list(number)
  default = [ 80,443,25,3306,53,8080 ]
}

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

    dynamic "ingress" {
      iterator = port
      for_each = var.ingressrules
      content {
        from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }
     }
      
  
    dynamic "egress" {
      iterator = port
      for_each = var.egressrules
      content {
        from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }
     }
    tags = {
    Name = "Allow Web Traffic Security Group"
  }
}