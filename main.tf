// provider is aws 
provider "aws" {
  region = "eu-west-1"
}

module "developers_group" {
  source     = "./modules/iam_groups"
  group_name = "developers"
  policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",

    "arn:aws:iam::aws:policy/CloudWatchLogsReadOnlyAccess",

    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ]
}

module "dev-louis" {

  source    = "./modules/iam_users"
  user_name = "dev-louis"
  group     = "developers"

}

