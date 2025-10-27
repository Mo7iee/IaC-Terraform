resource "aws_s3_bucket" "app_bucket" {
  bucket = "my-app-bucket-123456"  # must be globally unique
  force_destroy = true
  tags = {
    Name = "app-bucket"
  }
}
