output "vpc_id" {
  description = "ID des erstellten VPC"
  value       = module.networking.vpc_id
}

output "s3_bucket_name" {
  description = "Name des S3-Buckets"
  value       = module.storage.bucket_id
}

output "lambda_function_name" {
  description = "Name der Lambda-Funktion"
  value       = module.lambda.function_name
}

output "input_folder_path" {
  description = "Pfad zum Eingabeordner im S3-Bucket"
  value       = module.storage.input_path
}

output "processed_folder_path" {
  description = "Pfad zum verarbeiteten Ordner im S3-Bucket"
  value       = module.storage.processed_path
}