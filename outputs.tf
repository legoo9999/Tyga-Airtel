output "instance_ip_addr" {
  value = aws_instance.server.private_ip
  value = aws_instance.server.public_ip
}

