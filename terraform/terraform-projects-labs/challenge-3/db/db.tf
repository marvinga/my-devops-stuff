resource "aws_instance" "db" {
    ami = "ami-0cc3a9edb87c91b53"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private_subnet1.id

    tags = {
        Name = "DBServer"
    }
  }

output "PrivateIP" {
    value = aws_instance.db.private_ip
}