terraform {
  backend "s3" {
    bucket = "aigerim7"
    key    = "project2/tfstatefile"
    region = "us-east-2"
  }
}