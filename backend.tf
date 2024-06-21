terraform {
  backend "s3" {
    bucket = "sourcebucket-ccc49"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}