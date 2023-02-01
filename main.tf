terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-06e85d4c3149db26a"
  instance_type = "t2.nano"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

