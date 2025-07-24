terraform {
  backend "s3" {

    bucket         = "my-tf-state-iam-project"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "s3-tf-table-iam-project"

  }
}


//will store state file in s3 bucket
//dynamodb table is used for state locking 
