resource "aws_instance" "variable_approach" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = var.instance_type

  tags = {
    Name = "variable_approach"
  }
  
}

# give variables threw command line
# terraform plan -var="instance_type=t2.small"


# touch terraform.tfvars (exactly this name)