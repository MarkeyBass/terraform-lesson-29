terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>2.0"
    }
  }
}

provider "aws" { 
  region = "us-east-1" 
}

resource "aws_instance" "first_instance" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "first_instance"
  }
}
resource "aws_instance" "second_instance" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "second_instance"
  }
}
resource "aws_instance" "third_instance" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "third_instance"
  }  
}


# terraform init

# give variables threw command line
# terraform plan -var="instance_type=t2.nano"

# Add variables with environment variables
# export TF_VAR_instance_type="t2.nano"

# terraform apply

# terraform destroy