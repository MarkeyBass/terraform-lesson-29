variable "name" {
  type = string
  default = "John"
}

variable "age" {
  type = number
  default = 25
}

variable "is_student" {
  type = bool
  default = true
}

variable "hobbies" {
  type = list(string)
  default = ["reading", "traveling", "music"]
}

variable "address" {
  # keys in terraform map must be strings
  # value types
  type = map(string)
  default = {
    street = "Baker street"
    city = "London"
    state = "UK"
    zip = "123456"
  }
}