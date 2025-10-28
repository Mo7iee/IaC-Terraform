terraform {
  backend "s3" {
    bucket         = "my-app-mohie-123459"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}