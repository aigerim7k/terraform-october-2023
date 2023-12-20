resource "aws_key_pair" "deployer" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

output key_pair {
    value = aws_key_pair.deployer.key_type
}