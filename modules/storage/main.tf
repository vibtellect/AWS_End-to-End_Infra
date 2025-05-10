resource "aws_s3_bucket" "data_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "Data Processing Bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.data_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Erstelle die Ordnerstruktur im S3-Bucket (in S3 sind das keine echten Ordner, sondern Präfixe)
resource "aws_s3_object" "input_folder" {
  bucket  = aws_s3_bucket.data_bucket.id
  key     = "input/"
  content = ""
}

resource "aws_s3_object" "processed_folder" {
  bucket  = aws_s3_bucket.data_bucket.id
  key     = "processed/"
  content = ""
}

# Für das Portfolio-Projekt verzichten wir auf die automatische S3-Benachrichtigung
# Stattdessen kann man Dateien manuell hochladen und die Lambda-Funktion manuell testen
