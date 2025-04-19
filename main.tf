provider "aws" {
region = "us-east-1"
}
resourse "aws_instance" {
ami = "ami-00a929b66ed6e0de6"
instance_type = "t2.micro"
tag {
Name = "hcp-server"
}
}
