resource "aws_route53_record" "wordpress" {
  zone_id = "Z04981151OUIFRU0JAMGK"
  name    = "wordpress.mustbfit.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}