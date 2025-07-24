provider "aws"{
        region ="us-east-2"
}
resource "aws_instance" "proj"{
   ami ="var.ami_value"
   instance_type = "var.instance_type_value"
}
