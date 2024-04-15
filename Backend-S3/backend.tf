terraform {
  backend "s3" {
    bucket         = "sappidibucket" 
    key            = "karthik/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "mydblock"
  }
}