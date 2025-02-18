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
  
variable "region" {
    description = "The AWS region to create the S3 bucket in"
    type        = string  
}
