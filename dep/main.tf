provider "aws" {
    region = "ca-central-1"
}

resource "aws_instance" "db" {
    ami = "ami-08675d67997ded61d"
    instance_type = "t3.micro"

    tags = {
      "Name" = "DB Server"
    }
}

resource "aws_instance" "web" {
    ami = "ami-08675d67997ded61d"
    instance_type = "t3.micro"

    depends_on = [aws_instance.db]
}