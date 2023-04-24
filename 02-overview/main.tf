terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0cd8ad123effa531a" # Red Hat Linux // eu-west-2
  instance_type = "t2.micro"
}
