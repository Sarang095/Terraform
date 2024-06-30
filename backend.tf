terraform {
  backend "s3" {
    bucket = "source-bucket-ccc49-useast2"
    key    = "terraform/backend"
    region = "us-east-2"
  }
}