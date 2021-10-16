module "my_ecr_repo" {
  source = "../"

  name = "my-ecr-repo"

  read_principals = [
    "arn:aws:iam::111122223333:user/my-iam-user",
  ]

  readwrite_principals = [
    "arn:aws:iam::111122223333:user/my-other-iam-user",
  ]
}
