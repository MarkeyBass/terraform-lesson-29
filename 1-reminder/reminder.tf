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
  # access_key = ""
  # secret_key = ""  
} 

resource "aws_instance" "first_instance" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"

  tags = {
    Name = "first_instance"
  }
}
resource "aws_instance" "second_instance" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"

  tags = {
    Name = "second_instance"
  }
}
resource "aws_instance" "third_instance" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"

  tags = {
    Name = "third_instance"
  }  
}

# 💲 terraform init
# 💲 terraform plan
# 💲 terraform apply



# Check current state vs desired state differences
# desired state is the current file (reminder.tf)
# 💲 terraform refresh --> will update the changes inside terraform.tfstate to have same configuration as the clowd
# after executing 💲 terraform plan --> desired state is in terraform.tfstate


# 💲 terraform destroy
# 💲 terraform destroy --target=aws_instance.first_instance
