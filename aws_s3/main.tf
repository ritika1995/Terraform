terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.11.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}


resource "aws_s3_bucket" "demo-bucket02077" {
  bucket = "testtestdemo9655"
}

resource "aws_s3_object" "bucket_data" {
  bucket = aws_s3_bucket.demo-bucket02077.bucket
  source = "./myfile.txt"
  key = "mydata.txt"
}