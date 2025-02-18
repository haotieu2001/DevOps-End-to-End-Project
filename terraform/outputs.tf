output "iam_user_name" {
  description = "The IAM user for Terraform"
  value                             = module.backend.iam_user_arn
}

output "s3_bucket_id" {
    description = "The S3 bucket ID"
    value                             = module.s3_website.s3_bucket_id
}

output "s3_bucket_arn" {
    description = "The S3 bucket ARN"
    value                             = module.s3_website.s3_bucket_arn
}

output "website_url" {
    description = "The URL of the website"
    value                             = module.s3_website.website_url
}