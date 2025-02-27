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