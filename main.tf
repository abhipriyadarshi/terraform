provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "One" {
count = 4
ami = "ami-0e58b56aa4d64231b"
instance_type = "t2.medium"
key_name = "my_amazon1"
vpc_security_group_ids = ["0fffc376be2a507df"]
tags = {
Name = var.instance_name[count.index]
}

}

variable  "instance_name" {
default = ["jenkins","app-server1","app-server2","monitoring"]
}
