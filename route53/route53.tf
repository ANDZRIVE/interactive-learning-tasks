resource "aws_route53_record" "blog" {
  zone_id = "Z04981151OUIFRU0JAMGK"
  name    = "blog.mustbfit.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}