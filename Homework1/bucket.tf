resource "aws_s3_bucket" "hello" {
  bucket_prefix = "helloaigerim"
}

resource "aws_s3_bucket" "hello1" {
  bucket = "helloaigerim1"
}
