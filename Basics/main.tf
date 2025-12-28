terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "testing" {
  ami           = "ami-02b8269d5e85954ef" #ubuntu 20.04 LTS AMI // ap-south-1
  instance_type = "t3.micro"
}
