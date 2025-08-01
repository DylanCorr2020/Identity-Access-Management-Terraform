
//Create an Iam group rescource
resource "aws_iam_group" "this" {
  name = var.group_name
}


// Attach IAM policies to the IAM group
resource "aws_iam_group_policy_attachment" "attach_policies" {
  // Iterate over each policy ARN (converts list to a set)
  for_each = toset(var.policy_arns)
  //Specify the IAM group to attach policies to
  group = aws_iam_group.this.name
  // Use each policy ARN from the list
  policy_arn = each.value
}















//old code for reference 
/*
// Create IAM group named "developers"
resource "aws_iam_group" "developers" {
  name = "developers"
}


// Attach policies to the "developers" group
resource "aws_iam_group_policy_attachment" "attach_policies_developers" {
  // Iterate over each policy ARN (converts list to a set)
  for_each = toset(var.policy_arns_developers)
  //Specify the group name to attach policies to
  group = aws_iam_group.developers.name
  // Use each policy ARN from the list
  policy_arn = each.value
}

*/






