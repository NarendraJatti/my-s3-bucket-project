# terraform/s3_bucket.tf
provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-name" # Replace with a unique bucket name

  tags = {
    Name        = "Example Bucket"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.example_bucket.id
  acl    = "private"
}
