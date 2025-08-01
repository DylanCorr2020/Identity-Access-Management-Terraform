
// Define the list of IAM usernames to create
variable "user_names" {
  type        = list(string)
  description = "The name of iam user to create"
}


// Define the name of the IAM group to assign the users to
variable "group" {
  type        = string
  description = "The group to attach to user "
}
