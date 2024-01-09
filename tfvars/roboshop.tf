resource "aws_instance" "web" {
 for_each = var.instance_names
  ami           = data.aws_ami.AmazonLinux2.id
  instance_type = each.value
 # vpc_security_group_ids = [aws_security_group.roboshop-all.id] # list 

  tags = {
    Name = each.key
    Environment = "Dev"
    Project = "Roboshop"
    Terraform = "true"
}

}

resource "aws_route53_record" "records" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" # interpolation 
  type    = "A"
  ttl     = 60
  records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip]
}