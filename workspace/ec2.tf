resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = lookup(var.instance_type, terraform.workspace)
  #vpc_security_group_ids = [aws_security_group.roboshop-all.id] # list 

  tags = {
    Name = "HelloTerraform "
  }
}

# resource "aws_security_group" "roboshop-all" { # terraform variable name for terraform reference only
#   name        = var.sg-name   # aws resource name
#   description = var.sg-description
  
#   ingress {
#     description      = "Allow all ports"
#     from_port        = var.inbound-from-port # 0 means all ports
#     to_port          = var.inbound-to-port
#     protocol         = "tcp"
#     cidr_blocks      = var.cidr_blocks
#     #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     #ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "roboshop-all-aws"
#   }
# }