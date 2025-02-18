output "ssl_cert_arn" {
 description = "value of the SSL certificate ARN"
  value = aws_acm_certificate.ssl_certificate.arn
}

output "route53_zone_id" {
  description = "value of the Route53 hosted zone ID"
  value = data.aws_route53_zone.dns_zone.zone_id
}

output "root_domain" {
  description = "value of the root domain"
  value = var.root_domain
} 