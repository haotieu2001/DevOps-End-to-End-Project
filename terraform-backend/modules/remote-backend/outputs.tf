output "iam_user_arn" {
  value = aws_iam_user.terraform_user.arn
}

output "bucket_name_output" {
  value = aws_s3_bucket.terraform_state_bucket.id
}

output "table_name_output" {
  value = aws_dynamodb_table.state_lock_table.id
}