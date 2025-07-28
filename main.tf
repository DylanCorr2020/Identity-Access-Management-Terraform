// provider is aws 
provider "aws" {
  region = var.region
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

module "dev-users" {

  source     = "./modules/iam_users"
  user_names = ["dev-louis", "dev-dylan"]
  group      = "developers"

}






