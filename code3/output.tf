
output "km_public_ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}

output "my-public-ip" {
  value = aws_lightsail_instance.custom.username
}

output "my_key" {
  value = aws_lightsail_instance.custom.key_pair_name
}