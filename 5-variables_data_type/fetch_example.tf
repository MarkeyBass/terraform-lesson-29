locals {
  first_value = var.hobbies[1]
  second_value = var.address["street"]
}

# locals - is to check local variables inside our terraform environment

output "values1" {
  value = local.first_value
}

output "values2" {
  value = local.second_value
}

# terraform init
# terraform plan
