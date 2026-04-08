
provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "k8s-node" {
  ami             = "ami-04680790a315cd58d"
  instance_type   = "c7i-flex.large"
  key_name        = "cicd-key"

  tags = {
    Name = "k8s-node"
  }
}
