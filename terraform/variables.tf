
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