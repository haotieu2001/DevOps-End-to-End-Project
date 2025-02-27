
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "root_domain" {
  description = "The root domain for the Route53 hosted zone"
  type        = string
}

variable "dns_record_ttl" {
  description = "The TTL for the DNS record"
  type        = number
}

variable "website_bucket" {
  description = "The name of the S3 bucket to create for the website"
  type        = string
}

variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "A boolean that indicates if versioning should be enabled for the bucket"
  type        = bool
  default     = true
}

variable "index_document" {
  description = "The name of the index document to use for the bucket"
  type        = string
  default     = "index.html"
}