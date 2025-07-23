output "instance_ip_addr" {
  value = aws_instance.server.guda.private_ip
  value = aws_instance.server.guda.public_ip
}

