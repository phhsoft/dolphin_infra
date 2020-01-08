
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region  = var.region
}

variable "aws_access_key" {
  default     = "AKIA54YBHY3MFWVOMQXH"
  description = "Amazon AWS Access Key"
}

variable "aws_secret_key" {
  default     = "GKoLygu9q9uaHCCUwYjRYCeSgs2LRdiy2xMC4Flu"
  description = "Amazon AWS Secret Key"
}

variable "region" {
  default     = "cn-northwest-1"
  description = "Amazon AWS Region for deployment"
}

variable "type" {
  default     = "t2.medium"
  description = "Amazon AWS Instance Type"
}

variable "ssh_key_name" {
  default     = "dolphin"
  description = "Amazon AWS Key Pair Name"
}

variable "prefix" {
  default = "dolphin"
}
//resource "aws_security_group" "allowall" {
//  name = "${var.prefix}-allowall"
//
//  ingress {
//    from_port   = "0"
//    to_port     = "0"
//    protocol    = "-1"
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//
//  egress {
//    from_port   = "0"
//    to_port     = "0"
//    protocol    = "-1"
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//}

resource "aws_instance" "dophin" {
  ami           = "ami-09df4ebb6ce620e35"  # CentOs
  instance_type = var.type
  vpc_security_group_ids = ["sg-069a22b4ae19d390c"]
  key_name = var.ssh_key_name

  tags = {
    Name = "${var.prefix}-server"
  }

//  connection {
//    type = "ssh"
//    user = "centos"
//    private_key = file("dolphin.pem")
//    host = self.ip
//  }
//
//  provisioner "remote-exec" {
//    inline = [
//      "echo 'hello world'"
//    ]
//  }
}
