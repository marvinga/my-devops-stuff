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

resource "aws_instance" "db" {
    ami = "ami-0cc3a9edb87c91b53"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private_subnet1.id

    tags = {
        Name = "DBServer"
    }
  }

resource "aws_instance" "web" {
    ami = "ami-0cc3a9edb87c91b53"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet1.id
    security_groups = [aws_security_group.web_traffic.id]
    user_data = file("server-script.sh")
    
    tags = {
        Name = "WebServer"
    }
 }

resource "aws_eip" "web_ip" {
    instance = aws_instance.web.id
}

variable "ingress" {
    type = list(number)
    default = [ 80,443 ]
}

variable "egress" {
    type = list(number)
    default = [ 80,443 ]
}

resource "aws_security_group" "web_traffic" {
    name = "Allow Web Traffic"
    vpc_id = aws_vpc.challenge1-vpc.id
    
    dynamic "ingress" {
        iterator = port
        for_each = var.ingress
        content {
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
    }


    dynamic "egress" {
        iterator = port
        for_each = var.egress
        content {
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
    }    
}

resource "aws_internet_gateway" "internetGW" {
    vpc_id = aws_vpc.challenge1-vpc.id
    tags = {
        Name = "InternetGW"
    }
}

resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.challenge1-vpc.id
    tags = {
        Name = "PublicRouteTable"
    }
  
}

resource "aws_route" "public_route_table" {
    route_table_id = aws_route_table.public_rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetGW.id
}


resource "aws_route_table_association" "rtassociation" {
    subnet_id = aws_subnet.public_subnet1.id
    route_table_id = aws_route_table.public_rt.id
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}

output "PublicIP" {
    value = aws_instance.web.public_ip
}