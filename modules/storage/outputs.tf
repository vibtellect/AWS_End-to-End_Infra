output "bucket_id" {
  description = "ID of the S3 bucket"
  value       = aws_s3_bucket.data_bucket.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.data_bucket.arn
}

output "input_path" {
  description = "Path to the input folder"
  value       = "${aws_s3_bucket.data_bucket.bucket}/input/"
}

output "processed_path" {
  description = "Path to the processed folder"
  value       = "${aws_s3_bucket.data_bucket.bucket}/processed/"
}
