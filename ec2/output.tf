output "az" {
  value = aws_instance.web.availability_zone
}
output "public_ip" {
  value = aws_instance.web.public_ip
}
output "id" {
  value = aws_instance.web.id
}
output "region" {
  value = "us-east-1"
}