locals {
  user = csvdecode(file("user.csv"))
}