// Configure the AWS provider with the specified region
provider "aws" {
  region = var.region
}

// Create an IAM group named "developers" and attach predefined AWS managed policies
module "developers_group" {
  source     = "./modules/iam_groups"
  group_name = "developers"
  policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",

    "arn:aws:iam::aws:policy/CloudWatchLogsReadOnlyAccess",

    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ]
}

// Create IAM users and add them to the "developers" group
module "dev-users" {

  source     = "./modules/iam_users"
  user_names = ["dev-louis", "dev-dylan"]
  group      = "developers"

}

//Create IAM Group name "finance" and attach predefined AWS managed policies

module "finance_group" {
  source     = "./modules/iam_groups"
  group_name = "finance"
  policy_arns = [
    "arn:aws:iam::aws:policy/job-function/Billing"
  ]

}

// Create IAM users and add them to the "finance" group

module "finance_users" {
  source     = "./modules/iam_users"
  user_names = ["finance-joe"]
  group      = "finance"

}

//Create IAM Group name "operations" and attach predefined AWS managed policies
module "operations" {
  source     = "./modules/iam_groups"
  group_name = "operations"
  policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
    "arn:aws:iam::aws:policy/AmazonRDSFullAccess",
    "arn:aws:iam::aws:policy/AmazonSSMFullAccess",
    "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  ]
}

// Create IAM users and add them to the "operations" group
module "operations_users" {
  source     = "./modules/iam_users"
  user_names = ["operations_adam", "operations_sarah"]
  group      = "operations"

}



// Create IAM Group "analysts" attach predefined AWS managed policies
module "analysts_group" {
  source     = "./modules/iam_groups"
  group_name = "analysts"
  policy_arns = [
    "arn:aws:iam::aws:policy/AmazonRDSReadOnlyAccess",
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ]
}

// Create IAM users and add them to the "analysts" group
module "analysts_users" {
  source     = "./modules/iam_users"
  user_names = ["analyst-alice", "analyst-bob"]
  group      = "analysts"
}






