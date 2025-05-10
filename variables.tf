variable "aws_region" {
    type = string
    description = "AWS region to deploy resources"
    default = "eu-central-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  default = "10.0.2.0/24"
}

variable "function_name" {
  description = "Name of the Lambda function"
  default = "data-processor"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  default = "data-processor-bucket-vibtellect"
}
