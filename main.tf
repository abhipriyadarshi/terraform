provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "One"{
count = 4
ami = "ami-085386e29e44dacd7"
instance_type = "t2_micro"
key_name = "my_amazon1"
vpc_security_group_ids = ["0fffc376be2a507df"]
tags = {
Name = var.instance_name[count.index]
}

}

variable  "instance_name" {
default = ["jenkins","app-server1","app-server2","monitoring"]
}
