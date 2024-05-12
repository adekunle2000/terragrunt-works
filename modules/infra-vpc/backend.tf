terraform {
  backend "s3" {
    bucket         = "testing-terraform-s3"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-lock"
  }
}
