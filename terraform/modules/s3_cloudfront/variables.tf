variable "index_document" {
  description = "The index document for the website"
  type        = string
}

variable "root_domain" {
  description = "The root domain for the website"
  type        = string
  
}

variable "bucket_regional_domain_name" {
  description = "The regional domain name of the bucket"
  type        = string
}

variable "s3_bucket_id" {
  description = "The ID of the S3 bucket created for the website"
  type        = string
}

variable "ssl_cert_arn" {
  description = "The ARN of the SSL certificate to use for the website"
  type        = string
}