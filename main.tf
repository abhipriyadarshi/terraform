provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "One" {
count = 3
ami = "ami-0e58b56aa4d64231b"
instance_type = "t2.medium"
key_name = "my_amazon1"
vpc_security_group_ids = ["sg-003aa6c8dee6ce365"]
tags = {
Name = var.instance_name[count.index]
}

}

variable  "instance_name" {
default = ["jenkins","dev1","dev2"]
}
