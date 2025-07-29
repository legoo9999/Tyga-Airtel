provider "aws" {
     region = "us-east-2"
}

variable "ami" {
    description = "This is AMI for the insatnce"
}

variable "instance_type" {
    description = "This shows the ins type example t2.micro" 
}

resource "aws_instance" "MyTworkspace"{
    ami = var.ami
    instance_type = var.instance_type
}
