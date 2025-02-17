terraform {
  backend "s3" {
    region                          = "us-east-1"
    bucket                          = "terraform-state-bucket-haotieu2001"
    key                             = "website/terraform.tfstate"
    dynamodb_table                  = "terraform-state-locks"
   # encrypt                         = true
    
  }
}