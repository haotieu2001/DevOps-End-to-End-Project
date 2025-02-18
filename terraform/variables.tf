
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "iam_user_name" {
  description = "The IAM user name for the backend module"
  type        = string
}

variable "bucket_name" {
  description = "The S3 bucket name for the backend module"
  type        = string
}

variable "table_name" {
  description = "The DynamoDB table name for the backend module"
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