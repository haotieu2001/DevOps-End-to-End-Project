variable "root_domain" {
  description = "The root domain for the Route53 hosted zone"
  type        = string
}

variable "dns_record_ttl" {
  description = "The TTL for the DNS record"
  type        = number
}