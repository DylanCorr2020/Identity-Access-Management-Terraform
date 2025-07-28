
//user name 
variable "user_names" {
  type        = list(string)
  description = "The name of iam user to create"
}

//group name 
variable "group" {
  type        = string
  description = "The group to attach to user "
}
