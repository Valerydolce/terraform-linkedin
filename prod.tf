provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

#create a bucket and its policy
resource "aws_s3_bucket" "prod_tf_course" {
  bucket = "yval-bucket"
}

resource "aws_s3_bucket_acl" "prod_tf_course_acl" {
  bucket = aws_s3_bucket.prod_tf_course.id
  acl    = "private"
}

resource "aws_default_vpc" "default" {
  
}
