resource "aws_iam_group" "education" {
  name = "Education"
  path = "/groups/"
}
resource "aws_iam_group" "engineers" {
  name = "Engineer"
  path = "/groups/"
}
resource "aws_iam_group" "managers" {
  name = "Manager"
  path = "/groups/"
}
resource "aws_iam_group_membership" "education_membership" {
  name = "education-group-membership"
  group = aws_iam_group.education.name
  users = [for user in aws_iam_user.users : user.name if user.tags.Department == "Education"]
}
resource "aws_iam_group_membership" "engineers_membership" {
  name = "engineers-group-membership"
  group = aws_iam_group.engineers.name
  users = [for user in aws_iam_user : user.name if user.tags.Department == "Engineer"]
}
resource "aws-aws_iam_group_membership" "managers_membership" {
  name = "manager-group-membership"
  group = aws_iam_group.name
  user = [for user in aws_iam_user.users : user.name if contains(keys(user.tags), "JobTitle") && can(regex("Manager|CEO", user.tags.JobTitle))]
}