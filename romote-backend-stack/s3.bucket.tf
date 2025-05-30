resource "aws_s3_bucket" "this" {
  bucket = "bucket-s3-name"
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}