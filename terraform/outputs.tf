
output "s3_bucket_id" {
  description = "The S3 bucket ID"
  value       = module.s3_website.s3_bucket_id
}

output "s3_bucket_arn" {
  description = "The S3 bucket ARN"
  value       = module.s3_website.s3_bucket_arn
}

output "website_url" {
  description = "The URL of the website"
  value       = module.s3_website.website_url
}

output "cloudfront_distribution_id" {
  description = "The ID of the CloudFront distribution"
  value       = module.cloudfront.cloudfront_distribution_id
}