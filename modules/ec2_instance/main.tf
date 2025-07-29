provider "aws" {
     region = "us-east-2"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance, provided via tfvars."
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type for the instance, provided via tfvars."
  type        = string
}

resource "aws_instance" "example9779"{
    ami = var.ami
    instance_type = var.instance_type
}
