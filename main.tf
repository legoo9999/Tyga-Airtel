provider "aws" {
    region = "us-east-2"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance, provided via tfvars."
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type for the instance, provided via tfvars."
  type        = map(string)
  default = {
    "dev" = "valt2.micro"
    "prod" = "t2.micro"
  }
}

module "ec2_instance" {
   source = "./modules/ec2_instance"
   ami = var.ami
   instance_type = lookup(var.instance_type,terraform.workspace,"t2.micro")
}