# This file is the main entry point for the Terraform configuration.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}


module "dns_acm" {
  source         = "./modules/route53_acm"
  root_domain    = var.root_domain
  dns_record_ttl = var.dns_record_ttl
}

module "s3_website" {
  source             = "./modules/s3_website"
  website_bucket     = var.website_bucket
  force_destroy      = var.force_destroy
  versioning_enabled = var.versioning_enabled
  index_document     = var.index_document
  region             = var.region
}

module "cloudfront" {
  source                      = "./modules/s3_cloudfront"
  index_document              = module.s3_website.index_document
  root_domain                 = "frontend.${module.dns_acm.root_domain}"  # Changed from root to subdomain
  bucket_regional_domain_name = module.s3_website.bucket_regional_domain_name
  s3_bucket_id                = module.s3_website.s3_bucket_id
  ssl_cert_arn                = module.dns_acm.ssl_cert_arn
  route53_zone_id             = module.dns_acm.route53_zone_id

}