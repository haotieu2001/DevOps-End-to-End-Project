output "state_bucket_name" {
  value = module.backend.bucket_name_output
}

output "lock_table_name" {
  value = module.backend.table_name_output
}