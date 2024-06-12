# S3 Bucket resource
resource "aws_s3_bucket" "evolve_bucket" {
  bucket = var.s3_bucket_name
}

# S3 Bucket encryption configuration
resource "aws_s3_bucket_server_side_encryption_configuration" "evolve_bucket_encryption" {
  bucket = aws_s3_bucket.evolve_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# S3 Bucket policy to enforce HTTPS
resource "aws_s3_bucket_policy" "evolve_bucket_policy" {
  bucket = aws_s3_bucket.evolve_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "AllowOnlySecureTransport"
        Effect    = "Deny"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.evolve_bucket.bucket}/*",
          "arn:aws:s3:::${aws_s3_bucket.evolve_bucket.bucket}"
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport" = "false"
          }
        }
      }
    ]
  })
}