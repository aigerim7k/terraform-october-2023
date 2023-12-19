resource "aws_s3_bucket" "hello" {
  bucket_prefix = "kaizen-"
}

resource "aws_s3_bucket" "hello2" {
  bucket_prefix = "kaizen-hello23"
}


output "bucket2" {
  value = aws_s3_bucket.hello.arn
}