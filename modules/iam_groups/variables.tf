
// Define the name of the IAM group to create
variable "group_name" {
  type        = string
  description = "The name of iam group to create "
}


// Define a list of IAM policy ARNs to attach to the group
variable "policy_arns" {

  type        = list(string)
  default     = []
  description = "List of IAM policy ARNs to attach to the group"

}
