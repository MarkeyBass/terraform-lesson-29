# Communication between instances - "output" closure

resource "aws_instance" "example_instance" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"

  tags = {
    Name = "example_instance"
  }
}

# Output values - גישה לפרופרטיס בתוך האובייקטים שלנו
output "example_public_ip" {
  value = aws_instance.example_instance.public_ip
}


# 💲 terraform init
# 💲 terraform plan
# 💲 terraform apply