variable "instance_type" {
    default = {
        dev = "t2.micro"
        prod = "t3.small"
    }
}



variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-description" {
    type = string
    default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "inbound-to-port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}