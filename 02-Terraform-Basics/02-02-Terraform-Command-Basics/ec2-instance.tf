#terraform settings provider

terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }
}

#provider blocl
provider "aws" {
    profile = "default"
    region = "us-east-1"
}

#Resource Block
resource "aws_instance" "ec2demo" {
  ami = "ami-073f45061d35c86f0"
  instance_type = "t2.micro"
}
