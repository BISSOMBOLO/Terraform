output "ec2_eip_id" {
  value = aws_eip.my_eip.id
}

output "eip_output" {
  value = aws_eip.my_eip.public_ip
}