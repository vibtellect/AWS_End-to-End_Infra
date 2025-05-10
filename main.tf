provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  # Später können Sie dies für remote state management verwenden
  # backend "s3" {
  #   bucket = "your-terraform-state-bucket"
  #   key    = "terraform.tfstate"
  #   region = "eu-central-1"
  # }
}

# Module für jede Komponente
module "networking" {
  source = "./modules/networking"
  
  aws_region            = var.aws_region
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
}

# Erzeuge einen zufälligen String für den S3-Bucket-Namen
resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

# S3-Bucket für Datenspeicherung
module "storage" {
  source = "./modules/storage"
  
  bucket_name = "data-processor-${random_string.bucket_suffix.result}"
}

# Dann erstelle die Lambda-Funktion
module "lambda" {
  source = "./modules/lambda"
  
  function_name     = var.function_name
  s3_bucket_id      = module.storage.bucket_id
  vpc_id            = module.networking.vpc_id
  subnet_ids        = module.networking.private_subnet_ids
}