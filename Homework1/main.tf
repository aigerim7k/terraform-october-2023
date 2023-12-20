resource "aws_iam_user" "lb" {
  name = "Aigerim"
}

resource "aws_iam_user" "lb1" {
  name = "Kaizen"
}

resource "aws_iam_user" "lb2" {
  name = "Hello"
}

resource "aws_iam_user" "lb3" {
  name = "World"
}

resource "aws_iam_group" "developers" {
  name = "DevOps"
}

resource "aws_iam_group" "developers1" {
  name = "QA"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb1.name,
  ]

  group = aws_iam_group.developers.name
}

resource "aws_iam_group_membership" "team1" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb2.name,
    aws_iam_user.lb3.name,
  ]

  group = aws_iam_group.developers1.name
}

resource "aws_iam_user" "import" {
  name = "admin"
}

output user {
  value = aws_iam_user.lb
}

output user1 {
  value = aws_iam_user.lb1.unique_id
}
