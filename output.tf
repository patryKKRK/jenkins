output "instance_IP" {
  value = aws_instance.jenkins.public_ip
}