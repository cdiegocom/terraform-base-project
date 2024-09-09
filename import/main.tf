provider "aws" {
    region = "ca-central-1"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
}

// RECURSO A SER IMPORTADO
/**
resource "aws_vpc" "myvpc2" {
    cidr_block = "192.168.0.0/24"
    tags = {
        Name = "myvpc2"
        Aluno = "cdcp"
        Periodo = "7"
    }
}
*/