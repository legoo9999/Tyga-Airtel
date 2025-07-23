provider "aws"{
        region ="us-east-2"
}
resourse "aws_instance" "guda"{
   ami ="var.ami_value"
   instance_type = "var.instance_type_value"
}
