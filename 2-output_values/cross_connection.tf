# Communication between instances - (ec2 instance and elastic ip instance)
resource "aws_instance" "myec2" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"

  tags = {
    Name = "myec2"
  }
}

# Create elastic ip
resource "aws_eip" "lb" {
  vpc=true
}

# connecting between ec2 instance and elastic ip instance

resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}

# create security group
# give to the security group allowence to our myec2 instance (add it to inbound roules)

resource "aws_security_group" "allow_tls" {
  name = "terraform-security-group"
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
    description = "A test security group"
  }
}


# ingress - inbound rules
# egress - outbound rules


# To specify outbound rules in Terraform for AWS security groups, you can use the egress block within the aws_security_group resource. The egress block defines the outbound rules that control the traffic leaving the instance.

# resource "aws_security_group" "allow_tls" {
#   name = "terraform-security-group"

#   ingress {
#     from_port = 443
#     to_port = 443
#     protocol = "tcp"
#     cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
#     description = "A test security group"
#   }

#   egress {
#     from_port = 0
#     to_port = 0
#     protocol = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "Allow all outbound traffic"
#   }
# }
# In this example, the egress block allows all outbound traffic from the instance by using cidr_blocks = ["0.0.0.0/0"].
