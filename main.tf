provider "aws"{
      region = "us-east-2"
}

module "ec2_instance" {
   ami_value = "0d1b5a8c13042c939"
   instance_type_value ="t2.micro"
   tags ={
      Name = "my-evertf-module"
   }
}
