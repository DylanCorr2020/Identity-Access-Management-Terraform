
// Create IAM group named "developers"
resource "aws_iam_group" "developers" {
  name = "developers"
}

// Define a list of policy ARNs
variable "policy_arns" {

  type = list(string)
  default = [
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",

    "arn:aws:iam::aws:policy/CloudWatchLogsReadOnlyAccess",

    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ]

}


// Attach policies to the "developers" group
resource "aws_iam_group_policy_attachment" "attach_policies" {
  // Iterate over each policy ARN (converts list to a set)
  for_each = toset(var.policy_arns)
  //Specify the group name to attach policies to
  group = aws_iam_group.developers.name
  // Use each policy ARN from the list
  policy_arn = each.value
}






