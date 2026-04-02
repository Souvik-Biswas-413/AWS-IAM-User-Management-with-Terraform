output "user_names" {
  value = [for user in local.user: "${user.first_name} ${user.last_name}"]
}
output "password" {
  value = {for user, profile in aws_iam_user_login_profile.users :
  user => "password created - user must reset on first login"
  }
  sensitive = true
}