resource "aws_security_group" "myec2" {
  name = "vars-demo-security"
  
  # touch variables.tf

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    # cidr_blocks = ["52.91.100.108/32"]
    cidr_blocks = [var.vpn_ip]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
  ingress {
    from_port = 53
    to_port = 53
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}
