
variable "instance_names" {
    type = map
    default = {
        # "mysql" = "t3.small", 
        # "mongodb" = "t3.small",
        # "shipping" = "t3.small",
        # "rabbitmq" = "t2.small",
        # "redis" = "t2.small",
        # "catalogue" = "t2.small",
        # "cart" = "t2.small",
        # "user" = "t2.small",
        # "payments" = "t2.small",
        # "dispatch" = "t2.small",
        # "web" = "t2.small"
    }     
}

variable "t2micro" {
    type = string 
    default = "t2.micro"
}

variable "t3small" {
    type = string 
    default = "t3.small"
}

variable "zone_id" {
    type = string 
    default = "Z07707692IZAFTSKYYTLY"
}

variable "domain_name" {
    type = string
    default = "aws2day.online"
}