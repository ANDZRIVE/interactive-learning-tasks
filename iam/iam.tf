resource "aws_iam_user" "bob" {
  name = "bob"
  tags = {
      Team = "DevOps"
  }
}
resource "aws_iam_group" "sysusers" {
  name = "sysusers"

}
resource "aws_iam_user_group_membership" "DevOps" {
  user   = aws_iam_user.bob.name
  groups = [
    aws_iam_group.sysusers.name,
    ]
}


output "name" {
  value = aws_iam_user.bob.name
}







