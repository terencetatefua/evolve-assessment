variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "aws_provider_version" {
  description = "The version of the AWS provider"
  type        = string
}
