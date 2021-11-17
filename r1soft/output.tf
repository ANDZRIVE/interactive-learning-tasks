output "hosted_adress" {
  value = aws_instance.r1soft.public_ip
}

output "r1soft_username" {
  value = "admin1"
}

output "r1soft_password" {
  value = "redhat1"
}