provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-08675d67997ded61d"
    instance_type = "t3.micro"
    count = 3
}
